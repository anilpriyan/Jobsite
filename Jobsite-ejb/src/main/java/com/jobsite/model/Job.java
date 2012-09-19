package com.jobsite.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="JOB")
public class Job {

@Id
@Column(name="ID")
@GeneratedValue(strategy = GenerationType.IDENTITY)
int id;

@Column(name="DESCRIPTION")
String description;

@Column(name="JOB_TITLE")
String jobTitle;

@Column(name="CITY")
String city;

@Column(name="ZIP")
String zip;

@Column(name="SALARY")
String salary;

@Column(name="JOB_TYPE")
String jobType;


}
