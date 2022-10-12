package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.claim.entity.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Integer> {

}
