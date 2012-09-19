package com.jobsite.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Subscriber")
public class Subscriber {
	
	@Id
	@Column(name="ID")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	int id;
	
	@Column(name="FIRST_NAME")
	String firstName;
	
	@Column(name="LAST_NAME")
	String lastName;
	
	@Column(name="EMAIL")
	String email;
	
	@Column(name="ADDRESS1")
	String address1;
	
	@Column(name="ADDRESS2")
	String address2;
	
	@Column(name="CITY")
	String city;
	
	@Column(name="ZIP")
	String zip;
	
	@Column(name="HOME_PHONE")
	String homePhone;
	
	@Column(name="MOBILE_NUMBER")
	String mobileNumber;
}
