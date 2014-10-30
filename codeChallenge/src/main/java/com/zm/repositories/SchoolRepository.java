package com.zm.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.zm.model.SchoolDetails;

@Repository
public interface SchoolRepository extends MongoRepository<SchoolDetails, String>{

}
