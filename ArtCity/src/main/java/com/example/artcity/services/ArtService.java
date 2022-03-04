package com.example.artcity.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.artcity.models.Art;
import com.example.artcity.repository.ArtRepository;



@Service
public class ArtService {
	
	@Autowired
	private ArtRepository artRepository;
	
	public List<Art> findAllArt(){
		return artRepository.findAll();
	}
	
	public Art findArtById(Long id){
		Optional<Art> optionalArt=artRepository.findById(id);
		if(optionalArt.isPresent()) {
			return optionalArt.get();
		}
		return null;
	}
	
	public List<Art> findUserArts(Long id) {
		return artRepository.findByArtist(id);
	}
	
	public Art oneArt(Long id) {
		Optional<Art> optionalArt = artRepository.findById(id);
		if(optionalArt.isPresent()) {
			return optionalArt.get();
		}else {
			return null;
		}
	}

	public Art createArt(Art art) {
		return artRepository.save(art);
	}
		
	public Art updateArt(Art art) {
		return artRepository.save(art);
	}
		
	public void deleteArt(Long id) {
		artRepository.deleteById(id);
	}
	
	public List<Art> findByOrderByPriceDesc(){		
		return artRepository.findByOrderByPriceDesc();
	}

	
	public List<Art> findAllToSale(){
		return artRepository.findByInMarketIsTrue();
	}
	
}
