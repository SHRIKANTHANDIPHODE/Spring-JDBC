package com.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nit.model.Student;

import jakarta.servlet.http.HttpServletRequest;

import com.nit.dao.StudentDao;

@Controller
public class StudentController {

	@Autowired
	private StudentDao studentDao;

	@RequestMapping("/showStudentPage")
	public String showStudentPage() {
		return "add_student";
	}

	@RequestMapping("/getAllStudents")
	public String getAllStudents(Model model) {
		List<Student> student = studentDao.getAllStudent();
		model.addAttribute("students", student);
		return "show_student";
	}

	@RequestMapping("/saveStudent")
	public String showStudentPage(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("stuid"));
		String firstNamne = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		Student st = new Student(id, firstNamne, lastName);
		studentDao.saveStudent(st);
		return "redirect:/getAllStudents";
	}
	@RequestMapping("/deleteStudent")
	public String deleteStudent(HttpServletRequest request)
	{
		String id=request.getParameter("stu_id");
		studentDao.deleteStudent(Integer.valueOf(id));
		return "redirect:getAllStudents";
	}
}
