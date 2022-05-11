package com.example.coursework;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.example.coursework.controller"})
public class CourseWorkApplication {
    public static void main(String[] args) {
        SpringApplication.run(CourseWorkApplication.class, args);
    }

}
