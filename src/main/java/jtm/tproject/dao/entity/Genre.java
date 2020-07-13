package jtm.tproject.dao.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Genres")
public class Genre {

	public Genre() {
		super();
	}

	public Genre(String name) {
		super();
		this.name = name;
	}

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	Long id;
	String name;
	
	public String toString() {
		return "'Genre:" + id + ", name:" + name + "'";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

}
