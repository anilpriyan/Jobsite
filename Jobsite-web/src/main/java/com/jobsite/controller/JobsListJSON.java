package com.jobsite.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class JobsListJSON {
	private List<Map<String, String>> jobs;
	
	// all struts logic here
	public String execute() {
		
		jobs = new ArrayList<Map<String, String>>();
		Map<String, String> job = new HashMap<String, String>();
		job.put("title", "Java Developer");
		job.put("description", "Java Developer 1");
		job.put("location", "london");
		jobs.add(job);
		
		job = new HashMap<String, String>();
		job.put("title", "Java Developer");
		job.put("description", "Java Developer 1");
		job.put("location", "london");
		jobs.add(job);
		
 
		return "SUCCESS";
 
	}

	public List<Map<String, String>> getJobs() {
		return jobs;
	}

	public void setJobs(List<Map<String, String>> jobs) {
		this.jobs = jobs;
	}

}
