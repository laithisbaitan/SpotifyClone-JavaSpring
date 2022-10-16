package com.example.Spotify.Repositries;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.Spotify.Models.Playlist;
import com.example.Spotify.Models.Song;

@Repository
public interface SongRepo extends CrudRepository<Song, Long> {

	List<Song> findAll();

	Song findByIdIs(Long id);

	List<Song> findAllByPlaylists(Playlist playlist);

	List<Song> findByPlaylistsNotContains(Playlist playlist);
	
	

//	@Query(value = "select songs.id, songs.title, songs.artist, sum(num_of_times_added) "
//			+ "from songs left join playlist_song on playlist_song.song_id = songs.id group by songs.id;", nativeQuery = true)
//	List<Object[]> findByAllAddsforSong();
}
