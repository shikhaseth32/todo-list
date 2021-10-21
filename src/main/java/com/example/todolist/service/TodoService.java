package com.example.todolist.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.todolist.model.Todos;
import com.example.todolist.repository.TodoRepository;


@Service
public class TodoService implements ITodoService {

    @Autowired
    private TodoRepository todoRepository;

    @Override
    public List < Todos > getTodosByUser(String user) {
        return todoRepository.findByUserName(user);
    }

    @Override
    public Optional < Todos > getTodoById(long id) {
        return todoRepository.findById(id);
    }

    @Override
    public void updateTodo(Todos todos) {
        todoRepository.save(todos);
    }

    @Override
    public void addTodo(String name, String desc, Date targetDate, boolean isDone) {
        todoRepository.save(new Todos(name, desc, targetDate, isDone));
    }

    @Override
    public void deleteTodo(long id) {
        Optional < Todos > todos = todoRepository.findById(id);
        if (todos.isPresent()) {
            todoRepository.delete(todos.get());
        }
    }

    @Override
    public void saveTodo(Todos todos) {
        todoRepository.save(todos);
    }
}
