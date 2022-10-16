package com.example.Spotify.Repositries;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.Spotify.Models.User;

@Repository
public interface UserRepo extends CrudRepository<User, Long> {

	List<User> findAll();

	User findByEmail(String username);

	User findByFirstName(String Firstname);

	User findByIdIs(Long id);

	User findByPlaylistIdIs(Long playlistId);

	@Query(value = "SELECT users.id, concat(users.first_name, users.last_name), num_of_times_added"
			+" FROM users, playlists, playlist_song, songs"
			+" WHERE users.id = playlists.user_id AND" 
			+" playlists.id = playlist_song.playlist_id AND"
			+" playlist_song.song_id = ?1"
			+" group BY concat(users.first_name, users.last_name);", nativeQuery = true)
	List<Object[]> findAllBySongs(Long SongId);

}
