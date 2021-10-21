package com.example.todolist.service;


import java.util.Date;
import java.util.List;
import java.util.Optional;

import com.example.todolist.model.Todos;




public interface ITodoService {

    List < Todos > getTodosByUser(String user);

    Optional < Todos > getTodoById(long id);

    void updateTodo(Todos todos);

    void addTodo(String name, String desc, Date targetDate, boolean isDone);

    void deleteTodo(long id);

    void saveTodo(Todos todos);
}
