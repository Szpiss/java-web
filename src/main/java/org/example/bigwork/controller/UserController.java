package org.example.bigwork.controller;

import javax.servlet.http.HttpSession;
import org.example.bigwork.entity.User;
import org.example.bigwork.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/bigwork")
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping({"", "/", "/login"})
    public String loginPage(Model model) {
        if (!model.containsAttribute("user")) {
            User user = new User();
            user.setUsername("崔子霖");
            user.setPassword("2315302125");
            model.addAttribute("user", user);
        }
        return "bigwork/login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password,
            HttpSession session, RedirectAttributes redirectAttributes) {
        User user = userService.login(username, password);
        if (user == null) {
            redirectAttributes.addFlashAttribute("message", "用户名或密码错误，请重新登录。");
            return "redirect:/bigwork/login";
        }
        session.setAttribute("loginUser", user);
        return "redirect:/bigwork/users";
    }

    @GetMapping("/register")
    public String registerPage(Model model) {
        if (!model.containsAttribute("user")) {
            User user = new User();
            user.setUsername("崔子霖");
            user.setPassword("2315302125");
            user.setRealName("崔子霖");
            user.setStudentNo("2315302125");
            model.addAttribute("user", user);
        }
        return "bigwork/register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute User user, RedirectAttributes redirectAttributes) {
        if (userService.register(user)) {
            redirectAttributes.addFlashAttribute("message", "注册成功，请使用新账号登录。");
            return "redirect:/bigwork/login";
        }
        redirectAttributes.addFlashAttribute("message", "注册失败，用户名不能为空或已存在。");
        redirectAttributes.addFlashAttribute("user", user);
        return "redirect:/bigwork/register";
    }

    @GetMapping("/users")
    public String users(Model model, HttpSession session) {
        User loginUser = (User) session.getAttribute("loginUser");
        if (loginUser == null) {
            return "redirect:/bigwork/login";
        }
        model.addAttribute("loginUser", loginUser);
        model.addAttribute("users", userService.listUsers());
        return "bigwork/users";
    }

    @PostMapping("/users/update")
    public String update(@ModelAttribute User user, RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("message", userService.update(user) ? "用户修改成功。" : "用户修改失败。");
        return "redirect:/bigwork/users";
    }

    @GetMapping("/users/delete")
    public String delete(@RequestParam Integer id, RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("message", userService.delete(id) ? "用户删除成功。" : "用户删除失败。");
        return "redirect:/bigwork/users";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/bigwork/login";
    }
}
