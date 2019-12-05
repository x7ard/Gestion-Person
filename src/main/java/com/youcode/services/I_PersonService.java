package com.youcode.services;

import java.util.List;

import com.youcode.entity.person;

public interface I_PersonService {
	public List<person> getAll();
	
	public void add(person p);
	
	public void delete(int id);
	
	public void update(person p);
	
	public person getPerson(int id);
}
