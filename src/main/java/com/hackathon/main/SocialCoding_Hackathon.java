package com.hackathon.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com")
public class SocialCoding_Hackathon {

	public static void main(String[] args) {
		SpringApplication.run(SocialCoding_Hackathon.class, args);
	}

}
