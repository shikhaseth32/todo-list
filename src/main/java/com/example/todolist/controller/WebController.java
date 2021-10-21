package com.example.todolist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller  
public class WebController {  

	@GetMapping({"/", "/welcome"})
    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="admin") String name) {
        model.addAttribute("name", name);
        return "welcome";
    }

}
