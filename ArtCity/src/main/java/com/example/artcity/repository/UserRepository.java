package com.example.artcity.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.artcity.models.User;

public interface UserRepository extends CrudRepository<User, Long> {

}
