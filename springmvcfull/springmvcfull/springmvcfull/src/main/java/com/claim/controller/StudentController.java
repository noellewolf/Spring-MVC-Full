package com.claim.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Student;
import com.claim.service.StudentService;

import java.util.*;
@Controller
public class StudentController {

	@Autowired
	StudentService studentService;
	
	@GetMapping("/")
	public String welcome(Model model, HttpSession session) {
		return "index";
	}
	
	@GetMapping("/register")
	public ModelAndView register(Model model) {
		return new ModelAndView("register", "student", new Student());
	}
	
	@PostMapping("/register")
	public String handleRegistration(Model model, @ModelAttribute("student") Student student, HttpSession session) {
		studentService.saveStudent(student);
		model.addAttribute("newStudent", student);
		return "thank-you";
	}
	@GetMapping("/login")
	public ModelAndView login(Model model) {
		return new ModelAndView("login", "student", new Student());
	}
	
	@PostMapping("/login")
	public String handleLogin(Model model, @ModelAttribute("student") Student student, HttpSession session) {
			Student found = studentService.findStudentLogin(student.getEmail(), student.getPassword());
			
		if (found != null) {
			
			model.addAttribute("setStudent", found);
			session.setAttribute("setStudent", found);
			System.out.println("FOUND OBJECT: " + found);
			return "redirect:profile";
		} else {
			model.addAttribute("msg", "Invalid Login DUUUUUUUDE");
			return "login";
		}
	}
	@GetMapping("/profile")
	public String profile(Model model, HttpSession session ) {
		System.out.println(session.getAttribute("setStudent"));
		return "profile";
	}
	@GetMapping("/editInfo")
	public ModelAndView edit(Model model, HttpSession session, @RequestParam String email) {
		Student obj = (Student) session.getAttribute("setStudent");
		
		System.out.println(session.getAttribute("setStudent"));
		return new ModelAndView("editInfo", "edit", studentService.getStudentById(obj.getEmail()));
	}
	
	@PostMapping("/editInfo")
	public String handleEdit(Model model, @ModelAttribute("edit") Student student, HttpSession session) {
		return "profile";
		
	}
}
