package com.example.Spotify.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Value;

@Entity
@Table(name = "playlist_song")
public class Playlist_song {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;


    @Column(columnDefinition = "integer default 1")
	private int NumOfTimesAdded ;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "song_id")
	private Song song;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "playlist_id")
	private Playlist playlist;

	public Playlist_song() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getNumOfTimesAdded() {
		return NumOfTimesAdded;
	}

	public void setNumOfTimesAdded(int numOfTimesAdded) {
		this.NumOfTimesAdded = numOfTimesAdded;
	}

	public Song getSong() {
		return song;
	}

	public void setSong(Song song) {
		this.song = song;
	}

	public Playlist getPlaylist() {
		return playlist;
	}

	public void setPlaylist(Playlist playlist) {
		this.playlist = playlist;
	}

}
