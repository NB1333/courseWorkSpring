package com.example.coursework;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableAutoConfiguration(exclude={.class})
@SpringBootApplication
public class CourseWorkApplication {

    public static void main(String[] args) {
        SpringApplication.run(CourseWorkApplication.class, args);
    }

}
