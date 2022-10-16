package com.example.Spotify.Models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "playlists")
public class Playlist {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Size(min = 3, max = 30, message = "Playlist's name must be at least 3 characters!")
	private String name;

	@ManyToOne(fetch = FetchType.LAZY)
	@JsonIgnore
	@JoinColumn(name = "user_id")
	private User user;

	@ManyToMany(fetch = FetchType.LAZY)
	@JsonIgnore
	@JoinTable(name = "playlist_song"
	, joinColumns = @JoinColumn(name = "playlist_id")
	, inverseJoinColumns = @JoinColumn(name = "song_id"))
	private List<Song> songs;

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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;

	}

	public List<Song> getSongs() {
		return songs;
	}

	public void setSongs(List<Song> songs) {
		this.songs = songs;
	}

}