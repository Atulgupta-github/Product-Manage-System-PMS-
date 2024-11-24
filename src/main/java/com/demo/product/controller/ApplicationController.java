package com.demo.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class ApplicationController {
	
	
	@GetMapping("/")
    public String homePage() {
        return "myhomepage"; // Resolves to /WEB-INF/views/myhomepage.jsp
    }
	
	@GetMapping("/register")
    public String registerPage() {
        return "register"; // Resolves to /WEB-INF/views/myhomepage.jsp
    }
	
	@GetMapping("/product")
	public String productPage() {
	    return "product"; // Resolves to /WEB-INF/views/product.jsp
	}
	
	@GetMapping("/login")
    public String login() {
        return "loginpage"; // Resolves to /WEB-INF/views/myhomepage.jsp
    }
	
	/*
	 * @PostMapping("/productcrt") public String productCrt() { return "productcrt";
	 * // Resolves to /WEB-INF/views/productcrt.jsp }
	 */

}
