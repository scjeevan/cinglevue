package com.zm.repositories;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.stereotype.Repository;

import com.zm.model.SchoolDetails;

@Repository
public interface SchoolRepository extends MongoRepository<SchoolDetails, String>{
	
	@Query("{ 'subject' : ?0 }")
	public List<SchoolDetails> findBySubject(String subject);
}
