package jtm.tproject.repo.impl;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;

import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.stereotype.Repository;

import jtm.tproject.dao.entity.Genre;
import jtm.tproject.repo.GenreRepository;

public class DefaultGenreRepository extends SimpleJpaRepository<Genre, Long> implements GenreRepository {

	public DefaultGenreRepository(Class<Genre> domainClass, EntityManager em) {
		super(domainClass, em);
	}

//	@Override
	public List<Genre> findAll(Genre genre) {
		return this.findAll(genre);
	}
}
