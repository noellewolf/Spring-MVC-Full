package com.claim.entity;

import javax.persistence.*;

@Entity
@Table(name = "course")
public class Course {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	@Column(name="course_name")
	private String courseName;
	
	@Column(name="description")
	private String description;
	
	@Column(name="course_number")
	private String courseNumber;
	
	@ManyToOne
	@JoinColumn(name="teacher_id")
	private Teacher teacher;
	
	public Course() {
		
	}

	public Course(Integer id, String courseName, String description, String courseNumber, Teacher teacher) {
		super();
		this.id = id;
		this.courseName = courseName;
		this.description = description;
		this.courseNumber = courseNumber;
		this.teacher = teacher;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCourseNumber() {
		return courseNumber;
	}

	public void setCourseNumber(String courseNumber) {
		this.courseNumber = courseNumber;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	@Override
	public String toString() {
		return "Course [id=" + id + ", courseName=" + courseName + ", description=" + description + ", courseNumber="
				+ courseNumber + ", teacher=" + teacher + "]";
	}
	
	
}
