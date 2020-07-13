package jtm.tproject.dao.manager.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jtm.tproject.dao.entity.Genre;
import jtm.tproject.dao.entity.Movie;
import jtm.tproject.dao.manager.MovieManager;
import jtm.tproject.repo.GenreRepository;
import jtm.tproject.repo.MovieRepository;

@Service
public class DefaultMovieManager implements MovieManager {
	private EntityManager entitymanager;

	@Autowired
	GenreRepository genreRepository;
	
	@Autowired
	MovieRepository movieRepository;

	public Genre insertGenre(Genre action) {
		return genreRepository.save(action);
	}

	public List<Genre> findGenres(Genre genre) {
		List<Genre> results = new ArrayList<>();
		genreRepository.findAll().forEach(results::add);
		return results;
	}

	@Override
	public List<Movie> findMovies(Movie movie) {
		List<Movie> results = new ArrayList<>();
		movieRepository.findByName(movie.getName()).forEach(results::add);
		return results;
	}

	@Override
	public Movie insertMovie(Movie movie) {
		return movieRepository.save(movie);
	}
	
	@Override
	public List<Movie> findByGenres(List<Long> genresIds){
		
		return movieRepository.findByGenre(genresIds);		
	}
}
