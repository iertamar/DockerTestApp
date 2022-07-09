package com.example.dockertestapp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerTestController
{
	@GetMapping("/welcome")
	public String welcomeTest() {
		return "Welcome to test docker.";
	}
}
