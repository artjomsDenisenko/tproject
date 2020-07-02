package jtm.tproject.dao.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Genres")
public class Genre {

	public Genre(String name) {
		super();
		this.name = name;
	}

	@Id
	int id;
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
}
