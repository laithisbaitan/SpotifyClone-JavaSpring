package com.example.Spotify.Repositries;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.Spotify.Models.Playlist_song;

@Repository
public interface Play_SongRepo extends CrudRepository<Playlist_song, Long> {

	List<Playlist_song> findAllByPlaylist_id(Long Playlist_id);

	Playlist_song findAllByPlaylist_idAndSong_id(Long Playlist_id, Long Song_id);

	List<Playlist_song> findAllBySong_id(Long Song_id);

	@Query(value = "select sum(num_of_times_added) "
			+ "from songs left join playlist_song on playlist_song.song_id = songs.id "
			+ "group by songs.id;", nativeQuery = true)
	List<Integer> findByAllAddsforSong();

	@Query(value = "select songs.id, songs.title, songs.artist, sum(num_of_times_added), songs.image_data "
			+ "from songs left join playlist_song on playlist_song.song_id = songs.id group by songs.id;", nativeQuery = true)
	List<Object[]> dashboardSonglistQuery();
	
	@Query(value = "select songs.id, songs.title, songs.artist, sum(num_of_times_added) "
			+ "from songs join playlist_song on playlist_song.song_id = songs.id "
			+ "AND playlist_song.playlist_id = ?1 group by songs.id;", nativeQuery = true)
	List<Object[]> usersPlaylistSongsQuery(Long playlistId);
	
}