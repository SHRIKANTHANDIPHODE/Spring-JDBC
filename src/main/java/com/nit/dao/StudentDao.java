package com.nit.dao;

import java.util.List;

import com.nit.model.Student;

public interface StudentDao {
	List<Student> getAllStudent();
	void saveStudent(Student st);
	void deleteStudent(Integer stuId);
	
	
	

}
