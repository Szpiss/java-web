# 实验二：session 与 application 内置对象

本实验完成基于 `session` 的在线考试流程，并使用 `application` 对象实现网站访问计数。

## 实验内容

- `exam.jsp` 显示在线考试题目并提交答案。
- `exam_ans.jsp` 接收表单数据，将答案保存到 `session`。
- `exam_result.jsp` 从 `session` 读取答案并计算成绩。
- `visit_count.jsp` 使用 `application` 保存全局访问次数。

## 主要源码

- `src/main/webapp/coursework/exp2_session/exam.jsp`
- `src/main/webapp/coursework/exp2_session/exam_ans.jsp`
- `src/main/webapp/coursework/exp2_session/exam_result.jsp`
- `src/main/webapp/coursework/exp2_session/visit_count.jsp`

## 访问地址

```text
http://localhost:8080/sencondTest/coursework/exp2_session/exam.jsp
http://localhost:8080/sencondTest/coursework/exp2_session/visit_count.jsp
```

## 实验报告

- `experiments/exp2/report/javaweb开发基础课内实验二 2315302125 崔子霖.docx`
- `experiments/exp2/report/assets/`
- `experiments/exp2/report/assets_compressed/`
