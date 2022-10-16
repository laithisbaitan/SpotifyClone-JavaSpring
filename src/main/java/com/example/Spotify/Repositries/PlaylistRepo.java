package com.example.Spotify.Repositries;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.example.Spotify.Models.Playlist;
import com.example.Spotify.Models.Song;

@Repository
public interface PlaylistRepo extends CrudRepository<Playlist, Long> {

	List<Playlist> findAll();

	Playlist findByIdIs(Long id);

	Playlist findByName(String name);

	List<Playlist> findAllBySongs(Playlist playlist);

	List<Playlist> findAllByUser_id(Long id);

	List<Playlist> findAllBySongs(Song song);

	List<Playlist> findBySongsNotContains(Song song);

	@Query(value = "UPDATE playlist_song SET NumOfTimesAdded = NumOfTimesAdded +1 "
			+ "WHERE playlist_song.playlist_id = $1 AND " + "playlist_song.song_id = $2;", nativeQuery = true)
	void findByPlaylistAndSong(Long playId, Long songid);

	

}
