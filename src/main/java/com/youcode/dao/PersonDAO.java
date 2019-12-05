package com.youcode.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.youcode.entity.person;

@Transactional
@Repository
public class PersonDAO implements I_PersonDao {
	
	@PersistenceContext
	EntityManager em;
	
	public List<person> getAll(){
		Query query = em.createQuery("FROM person");
		List<person> list = (List<person>)query.getResultList(); 	
		return list;
	}
	
	public person getPerson(int id) {
		return (person)em.find(person.class, id);
	}
	
	public void addPerson(person person) {
		em.merge(person);
	}
	
	public void updatePerson(person person) {
		em.merge(person);
	}
	
	public void deletePerson(int id ) {
		person p = em.find(person.class, id);
		em.remove(p);
	}	
}
