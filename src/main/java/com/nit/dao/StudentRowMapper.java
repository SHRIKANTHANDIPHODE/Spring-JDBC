package com.nit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.nit.model.Student;

public class StudentRowMapper implements RowMapper<Student>{

	@Override
	public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
		Student st=new Student();
		st.setStuId(rs.getInt("stuId"));
		st.setFName(rs.getString("fName"));
		st.setLName(rs.getString("lName"));
		return st;
	}
	

}
