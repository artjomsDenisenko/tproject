import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jtm.tproject.dao.entity.Movie;
import jtm.tproject.dao.manager.MovieManager;

@Controller
public class MovieController {
	@Autowired
	MovieManager movieManger;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage(@RequestParam(value = "name", required = false) String name, HttpServletRequest request,
			HttpServletResponse response) {
		List<Movie> movies = movieManger.findMovies(null);
		response.setStatus(HttpServletResponse.SC_OK);
		return "index";
	}
}