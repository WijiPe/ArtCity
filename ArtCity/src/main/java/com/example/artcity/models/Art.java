package com.example.artcity.models;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Positive;

@Entity
@Table(name="arts")
public class Art {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotEmpty(message="Name is required!")
    @Size(min=3, max=30, message="Name must be between 3 and 30 characters")
    private String name;
    
    @NotEmpty(message="Art is required!")
    private String artwork;
    
    
    @NotEmpty(message="Description is required!")
    @Size(min=3, max=30, message="Description must be between 3 and 30 characters")
    private String description;
    
    @NotEmpty(message="category is required!")
    private String category;
    
    @NotNull
    @Positive(message="Amount must be at greater than 0.")
    private Double price;
    
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User artist;
    
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="collector_id")
    private User collector;
	
	@NotNull
	private Boolean inMarket;
    
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
    
    public Art() {}
    
  
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getArtwork() {
		return artwork;
	}
	public void setArtwork(String artwork) {
		this.artwork = artwork;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public User getArtist() {
		return artist;
	}
	public void setArtist(User artist) {
		this.artist = artist;
	}
	public User getCollector() {
		return collector;
	}
	public void setCollector(User collector) {
		this.collector = collector;
	}
	public Boolean getInMarket() {
		return inMarket;
	}
	public void setInMarket(Boolean inMarket) {
		this.inMarket = inMarket;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
}
