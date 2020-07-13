package jtm.tproject.dao.manager;

import java.util.List;

import org.springframework.stereotype.Service;

import jtm.tproject.dao.entity.Genre;
import jtm.tproject.dao.entity.Movie;

public interface MovieManager{
	
	public Genre insertGenre(Genre action);
	
	public List<Genre> findGenres(Genre genre);
	
	public List<Movie> findMovies(Movie genre);
	
	public List<Movie> findTop6();
	
	public Movie insertMovie(Movie movie);
	
	public List<Movie> findByGenres(List<Long> genresIds);
}
