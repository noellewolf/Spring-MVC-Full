package com.claim.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Address;
import com.claim.entity.Student;
import com.claim.repository.StudentRepository;

@Service
public class StudentService {

	@Autowired
	StudentRepository studentRepository;
	
	public void saveStudent(Student s1) {
		studentRepository.save(s1);
	}
	
	public List<Student> getAllStudents() {
		return studentRepository.findAll();
	}
	
	public void deleteStudentById(String email) {
		studentRepository.deleteById(email);
	}
	
	public void deleteAllStudents() {
		studentRepository.deleteAll();
	}
	
	public Optional<Student> getStudentById(String email) {
		return studentRepository.findById(email);
	}
	
	public Student findStudentLogin(String email, String password) {
		return studentRepository.loginStudent(email, password);
	}
	public void editStudentInfo(Student student) {
		Optional<Student> found = studentRepository.findById(student.getEmail());
		if(found.isPresent() ) {
			Student edit = new Student();
			edit.setEmail(student.getEmail());
			edit.setAge(student.getAge());
			edit.setFirstName(student.getFirstName());
			edit.setLastName(student.getLastName());
			edit.setPhoneNumber(student.getPhoneNumber());
			edit.setPassword(student.getPassword());
			Address a1 = new Address(student.getAddress().getId(), student.getAddress().getStreet(),
					student.getAddress().getCity(), student.getAddress().getState(), student.getAddress().getZip());
			edit.setAddress(a1);
			studentRepository.deleteById(found.get().getEmail());
			studentRepository.save(edit);
		}
	}
}
