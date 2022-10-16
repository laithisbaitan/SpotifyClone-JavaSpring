package com.example.Spotify.Services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.Spotify.Models.MediUser;
import com.example.Spotify.Models.Role;
import com.example.Spotify.Models.User;
import com.example.Spotify.Repositries.UserRepo;



@Service
public class UserDetailsServiceImplementation implements UserDetailsService{
	@Autowired
	private UserRepo userRepo;
	
	//1
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.findByEmail(username);
        
        if(user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        
        return new MediUser(user.getFirstName(),
        		user.getPassword(),true,true,true,true, getAuthorities(user), user.getEmail());
    }
	
    // 2
    private List<GrantedAuthority> getAuthorities(User user){
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        for(Role role : user.getRoles()) {
            GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(role.getName());
            authorities.add(grantedAuthority);
        }
        return authorities;
    }
}
