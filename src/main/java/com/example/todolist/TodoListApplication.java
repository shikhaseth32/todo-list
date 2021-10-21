package com.example.todolist;

import java.util.Date;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

import com.example.todolist.model.Todos;
import com.example.todolist.repository.TodoRepository;

@SpringBootApplication
public class TodoListApplication extends SpringBootServletInitializer {
	
	@Autowired
	TodoRepository todoRepository;
	
	@Override
	 protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(TodoListApplication.class);
	   }

	public static void main(String[] args) {
		SpringApplication.run(TodoListApplication.class, args);
	}
	
	/*
	@PostConstruct
	  private void initDb() {
	    Todos user = new Todos();
	    user.setUserName("user");
	    user.setId(1L);
	    user.setDescription("Hi");
	    user.setTargetDate(new Date());
	    todoRepository.save(user);
	  }*/

}
