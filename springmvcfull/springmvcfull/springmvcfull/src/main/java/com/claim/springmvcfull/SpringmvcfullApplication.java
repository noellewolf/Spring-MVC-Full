package com.claim.springmvcfull;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan(basePackages = "com.claim")
@SpringBootApplication
public class SpringmvcfullApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringmvcfullApplication.class, args);
	}

}
