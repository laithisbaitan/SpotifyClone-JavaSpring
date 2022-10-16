package com.example.Spotify.Models;

import java.util.Collection;

import org.springframework.security.core.userdetails.User;

//we use this class to create a new principle obj but with addition to email property
public class MediUser extends User {

	private static final long serialVersionUID = 1L;
	
private final String email;


   public MediUser(String username, String password, boolean enabled,
	         boolean accountNonExpired, boolean credentialsNonExpired,
	         boolean accountNonLocked,
	         Collection authorities,String email) {
	   
	   super(username, password, enabled, accountNonExpired,
               credentialsNonExpired, accountNonLocked, authorities);
	   this.email = email;

   }


public static long getSerialversionuid() {
	return serialVersionUID;
}


public String getEmail() {
	return email;
}
   
}