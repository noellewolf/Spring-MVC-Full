package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.claim.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, String> {

	@Query("SELECT s FROM Student s WHERE s.email=?1 AND s.password=?2")
	Student loginStudent(String email, String password);

}
