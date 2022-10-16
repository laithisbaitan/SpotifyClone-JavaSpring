package com.example.Spotify.Validators;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.example.Spotify.Models.User;
import com.example.Spotify.Repositries.UserRepo;


@Component
public class UserValidator implements Validator{
	
	@Autowired
	UserRepo userRepo;
	
	//1 
    @Override
    public boolean supports(Class<?> clazz) {
        return User.class.equals(clazz);
    }
    
    //2
    @Override
    public void validate(Object object, Errors errors) {
        User user = (User) object;
        
        if (!user.getConfirm().equals(user.getPassword())) {
            // 3
            errors.rejectValue("confirm", "Match","confirm dosnt match password");
        }      
    	User potentialUser = userRepo.findByEmail(user.getEmail());

    	if(potentialUser != null) {
    		errors.rejectValue("email", "Matches", "An account with that email already exists!");
    	}
    }
}
