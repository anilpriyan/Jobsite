package com.jobsite.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PROFILE")
public class Profile {
	
@Id
@Column(name="ID")
@GeneratedValue(strategy = GenerationType.IDENTITY)
int id;

@Column(name="TITLE")
String title;

@Column(name="KEYWORDS")
String keywords;

@Column(name="MAX_COMMUTE")
String maxCommute;

}
