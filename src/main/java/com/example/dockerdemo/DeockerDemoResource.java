package com.example.dockerdemo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DeockerDemoResource {
	@GetMapping("/welcome")
	public ResponseEntity<String> sayWelcome() {
		return ResponseEntity.ok("im welcoming people");
	}
}
