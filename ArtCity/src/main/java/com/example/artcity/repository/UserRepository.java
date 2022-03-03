package com.example.artcity.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.artcity.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
	List<User> findAll();
	
	Optional<User> findByEmail(String email);
	 
	@Modifying
	@Query("update User u set u.description = :description where u.id = :id")
	void updateUser(@Param(value = "id") Long id, @Param(value = "description") String description);

}

//@Param(value = "profilePicture") String profilePicture

