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

    @Value("/arts")
    public String uploadDir;
    
    public Path uploadFile(MultipartFile file, String newName) {
    	
        try {
            Path copyLocation = Paths.get(uploadDir + File.separator + StringUtils.cleanPath(newName));
            System.out.println(copyLocation);
            Path appendPath=Paths.get("src/main/webapp/");
            String finalPathString=appendPath.toString()+copyLocation.toString();
            Path finalPath=Paths.get(finalPathString);
            Files.copy(file.getInputStream(), finalPath, StandardCopyOption.REPLACE_EXISTING);
            return copyLocation;
        } catch (Exception e) {
            e.printStackTrace();
            throw new FileStorageException("Could not store file " + newName
                + ". Please try again!");
        }
    }
    
    @Value("/profilepicture")
    public String uploadProfilePicture;
        
    public Path uploadProfilePicture(MultipartFile file, String newName) {
    	
         try {
             Path copyLocation = Paths.get(uploadProfilePicture + File.separator + StringUtils.cleanPath(newName));
             System.out.println(copyLocation);
             Path appendPath=Paths.get("src/main/webapp/");
             String finalPathString=appendPath.toString()+copyLocation.toString();
             Path finalPath=Paths.get(finalPathString);
             Files.copy(file.getInputStream(), finalPath, StandardCopyOption.REPLACE_EXISTING);
             return copyLocation;
         } catch (Exception e) {
             e.printStackTrace();
             throw new FileStorageException("Could not store file " + newName
                 + ". Please try again!");
         }
            
    }
    
    
    
    
}