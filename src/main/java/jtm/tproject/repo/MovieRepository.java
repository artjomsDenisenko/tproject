package jtm.tproject.repo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import jtm.tproject.dao.entity.Movie;

public interface MovieRepository extends CrudRepository<Movie, Long> {
	
	@Query(
			value = "SELECT * FROM Movies m where m.name like ?1",
			nativeQuery = true)
	List<Movie> findByName(String name);
	
	
	@Query(
			value = "SELECT m.* FROM database_project.movies m " + 
					"Left join database_project.genres_movie_map gm on gm.movie_id = m.id " + 
					"Left join database_project.genres g on gm.genre_id = g.id "
					+"where g.id in (?1)",
			nativeQuery = true)
	List<Movie> findByGenre(List<Long> ids);

}
