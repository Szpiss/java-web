package org.example;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan
@MapperScan("org.example.bigwork.mapper")
public class BigWorkApplication {

    public static void main(String[] args) {
        SpringApplication.run(BigWorkApplication.class, args);
    }
}
