package com.nit.dao;

import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.nit.model.Student;

public class StudentDaoImpl extends JdbcDaoSupport implements StudentDao {
	
	private RowMapper<Student> rowMapper;
	private String GET_ALL = "select * from student";
	private String SAVE="insert into student values (?,?,?)";
	private String DELETE="delete from student where STUID=?";
	
	
	public void setRowMapper(RowMapper<Student> rowMapper) {
		this.rowMapper = rowMapper;
	}

	@Override
	public List<Student> getAllStudent() {
		 return getJdbcTemplate().query(GET_ALL, rowMapper);
		 
	}

	@Override
	public void saveStudent(Student st) {
		getJdbcTemplate().update(SAVE,st.getStuId(),st.getFName(),st.getLName());
		
	}

	@Override
	public void deleteStudent(Integer stuId) {
	     getJdbcTemplate().update(DELETE,stuId);
		
	}

}
