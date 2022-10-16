package com.example.Spotify.Models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "songs")
public class Song {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Size(min = 3, max = 30, message = "Song's title must be at least 3 characters!")
	private String title;

	@Size(min = 3, max = 30, message = "Song's artist name must be at least 3 characters!")
	private String artist;
	
	private String imageData;

	@ManyToMany(fetch = FetchType.LAZY)
	@JsonIgnore
	@JoinTable(name = "playlist_song"
	, joinColumns = @JoinColumn(name = "song_id")
	, inverseJoinColumns = @JoinColumn(name = "playlist_id"))
	private List<Playlist> playlists;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getImageData() {
		return imageData;
	}

	public void setImageData(String imageData) {
		this.imageData = imageData;
	}

	public List<Playlist> getPlaylists() {
		return playlists;
	}

	public void setPlaylist(List<Playlist> playlists) {
		this.playlists = playlists;
	}

}