package com.hardik.springboot.web.springbootfirstwebapplication.service;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hardik.springboot.web.springbootfirstwebapplication.model.Todo;

public interface TodoRepository extends JpaRepository<Todo, Integer> {
		List<Todo> findByUser(String user);

}
