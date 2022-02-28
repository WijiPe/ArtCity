package com.example.artcity.services;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.example.artcity.models.FileStorageException;

@Service
public class FileService {

    @Value("arts")
    public String uploadDir;

    public Path uploadFile(MultipartFile file, String newName) {
    	
        try {
            Path copyLocation = Paths
                .get(uploadDir + File.separator + StringUtils.cleanPath(newName));
            System.out.println(copyLocation);
            
            Files.copy(file.getInputStream(), copyLocation, StandardCopyOption.REPLACE_EXISTING);
            return copyLocation;
        } catch (Exception e) {
            e.printStackTrace();
            throw new FileStorageException("Could not store file " + newName
                + ". Please try again!");
        }
        
        
    }
    
    
    
    
}