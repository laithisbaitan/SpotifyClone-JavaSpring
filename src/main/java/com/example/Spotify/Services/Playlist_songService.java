package com.example.Spotify.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Spotify.Models.Playlist;
import com.example.Spotify.Models.Playlist_song;
import com.example.Spotify.Models.Song;
import com.example.Spotify.Repositries.Play_SongRepo;

@Service
public class Playlist_songService {
	@Autowired
	private Play_SongRepo play_songRepo;

	public List<Playlist_song> findSongsInPlaylist(Long playId) {
		return play_songRepo.findAllByPlaylist_id(playId);
	}

	public List<Integer> findAllAddsforSong() {
		return play_songRepo.findByAllAddsforSong();

	}

	public List<Object[]> dashboardSonglistQuery() {
		return play_songRepo.dashboardSonglistQuery();

	}

	public List<Object[]> usersPlaylistSongsQuery(Long playlistId) {
		return play_songRepo.usersPlaylistSongsQuery(playlistId);

	}
}
