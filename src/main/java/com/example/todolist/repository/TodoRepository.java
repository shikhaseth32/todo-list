package com.example.todolist.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.todolist.model.Todos;

public interface TodoRepository extends JpaRepository < Todos, Long > {
    List < Todos > findByUserName(String user);
}
