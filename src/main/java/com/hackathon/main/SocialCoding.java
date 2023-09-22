package com.hackathon.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com")
public class SocialCoding {

	public static void main(String[] args) {
		SpringApplication.run(SocialCoding.class, args);
	}

}
