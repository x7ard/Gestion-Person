package com.youcode.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.youcode.entity.*;
import com.youcode.dao.*;

@Service
public class PersonneService implements I_PersonService{
	
	@Autowired
	I_PersonDao dao;
	
	public List<person> getAll(){
		return dao.getAll();
	}
	
	public void add(person p) {
		dao.addPerson(p);
	}
	
	public void delete(int id) {
		dao.deletePerson(id);
	}
	
	public void update(person p) {
		dao.updatePerson(p);
	}

	public void setDao(I_PersonDao dao) {
		this.dao = dao;
	}
	
	public person getPerson(int id) {
		return dao.getPerson(id);
	}
	

	

}
