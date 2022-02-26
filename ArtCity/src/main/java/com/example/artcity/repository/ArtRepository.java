package com.example.artcity.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.artcity.models.Art;

public interface ArtRepository extends CrudRepository<Art, Long> {

}
