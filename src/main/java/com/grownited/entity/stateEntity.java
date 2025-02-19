package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "state")
public class stateEntity {
	  
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer stateid;
	
	private String statename;

	public Integer getStateid() {
		return stateid;
	}

	public void setStateid(Integer stateid) {
		this.stateid = stateid;
	}

	public String getstatename() {
		return statename;
	}

	public void setstatename(String statename) {
		this.statename = statename;
	}
	
}
