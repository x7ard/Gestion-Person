package com.youcode.dao;

import java.util.List;

import com.youcode.entity.person;;

public interface I_PersonDao {
	
	public List getAll();
	
	public person getPerson(int id);
	
	public void addPerson(person person);
	
	public void updatePerson(person person);
	
	public void deletePerson(int id );
	
}

































































































































