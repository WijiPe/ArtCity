package com.example.artcity.models;


import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name="users")
public class User {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotEmpty(message="Username is required!")
    @Size(min=3, max=30, message="Username must be between 3 and 30 characters")
    private String userName;
    
    @NotEmpty(message="Email is required!")
    @Email(message="Please enter a valid email!")
    private String email;
    
    @NotEmpty(message="Password is required!")
    @Size(min=8, max=128, message="Password must be between 8 and 128 characters")
    private String password;
    
    private String userPicture;
    
    private String description;
    
    @Min(0)
    private Double wallet;
    
    @Transient
    @NotEmpty(message="Confirm Password is required!")
    @Size(min=8, max=128, message="Confirm Password must be between 8 and 128 characters")
    private String confirm;
    
    @OneToMany(mappedBy="artist", fetch = FetchType.LAZY)
    private List<Art> arts;
    
	@OneToMany(mappedBy="collector", fetch = FetchType.LAZY)
    private List<Art> nfts;
    
  
	public User() {
		super();
		this.wallet = 1000.00;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getUserPicture() {
		return userPicture;
	}


	public void setUserPicture(String userPicture) {
		this.userPicture = userPicture;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Double getWallet() {
		return wallet;
	}


	public void setWallet(Double wallet) {
		this.wallet = wallet;
	}


	public String getConfirm() {
		return confirm;
	}


	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}


	public List<Art> getArts() {
		return arts;
	}


	public void setArts(List<Art> arts) {
		this.arts = arts;
	}


	public List<Art> getNfts() {
		return nfts;
	}


	public void setNfts(List<Art> nfts) {
		this.nfts = nfts;
	}




}
