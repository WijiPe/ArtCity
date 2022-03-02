package com.example.artcity.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.artcity.models.Art;

@Repository
public interface ArtRepository extends CrudRepository<Art, Long> {
	
	List<Art> findAll();
	List<Art> findByArtist(Long id);
	List<Art> findByCollectorIsNull();
	

}
