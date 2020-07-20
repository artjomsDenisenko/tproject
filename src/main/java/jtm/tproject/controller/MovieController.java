package jtm.tproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jtm.tproject.dao.entity.Movie;
import jtm.tproject.dao.manager.MovieManager;

@Controller
public class MovieController {
	@Autowired
	MovieManager movieManger;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage(HttpServletRequest request,
			HttpServletResponse response, Model model) {
		List<Movie> movies = movieManger.findTop6();
		model.addAttribute("movies", movies);
		response.setStatus(HttpServletResponse.SC_OK);
		return "index";
	}

	@RequestMapping(value = "/findMovie", method = RequestMethod.GET)
	public String getMovie(HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {
		try {
			List<Movie> movies = movieManger.findTop6(); 
			model.addAttribute("movies", movies);
		} catch (Exception exception) {
			model.addAttribute("errorMessage", "Error occur: not unique ID");
			return "movie";
		}
		return "movieList";
	}

	@Secured("ROLE_ADMIN")
	@RequestMapping(value = "/insertMovie", method = RequestMethod.GET)
	public String getInsertMovie(HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {

		// Create Class Entity
		Movie movie = new Movie();
		model.addAttribute("movie", movie);
		model.addAttribute("genresList", movieManger.findGenres(null));
		
		return "movie";
	}
	
	@Secured("ROLE_ADMIN")
	@RequestMapping(value = "/insertMovie", method = RequestMethod.POST)
	public String insertMovie(@ModelAttribute("movie") Movie movie,  HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {

		try {
			movie = movieManger.insertMovie(movie);
			model.addAttribute("message", "Movie - " + movie.getName() + " Was added to DB, id: " + movie.getId());
		} catch (Exception exception) {
			model.addAttribute("errorMessage", "Error occur: not unique ID");
			return "movie";
		}
		
		return "movie";
	}
}
