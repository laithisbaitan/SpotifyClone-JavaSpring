package com.example.Spotify.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Spotify.Models.Playlist;
import com.example.Spotify.Models.Song;
import com.example.Spotify.Repositries.SongRepo;

@Service
public class SongService {
	@Autowired
	private SongRepo songRepo;

	public List<Song> allSongs() {
		return songRepo.findAll();
	}

	public Song createSong(Song song) {
		return songRepo.save(song);
	}
	public Song updateSong(Song song) {
		return songRepo.save(song);
	}

//	public Song findSong(Long id) {
//		// Optional means the object can exist or not
//		Optional<Song> optionalSong = songRepo.findById(id);
//		if (optionalSong.isPresent()) {
//			return optionalSong.get();
//		} else {
//			return null;
//		}
//	}

	public void deleteSong(Long id) {
		Optional<Song> optionalSong = songRepo.findById(id);
		if (optionalSong.isPresent()) {
			songRepo.deleteById(id);
		}
	}

//	public Song findById(Long id) {
//		Optional<Song> optionalSong = songRepo.findById(id);
//		if (optionalSong.isPresent()) {
//			return optionalSong.get();
//		} else {
//			return null;
//		}
//	}

	public Song findById(long id) {
		return songRepo.findByIdIs(id);
	}

//	public List<Song> getAssignedPlaylists(Playlist playlist) {
//		return songRepo.findAllByPlaylists(playlist);
//	}
//
//	public List<Song> getUnassignedPlaylists(Playlist playlist) {
//		return songRepo.findByPlaylistsNotContains(playlist);
//	}

//	public List<Object[]> findAllAddsforSong() {
//		return songRepo.findByAllAddsforSong();
//
//	}

	public void DeleteSongfromPlaylist(Long playlistId, Long songId) {
		Optional<Song> optionalPlaylist = songRepo.findById(songId);
		if (optionalPlaylist.isPresent()) {
			songRepo.deleteById(songId);
		}
	}

	
}