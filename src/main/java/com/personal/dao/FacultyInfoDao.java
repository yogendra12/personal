
package com.personal.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.personal.basemodel.BaseFaultyInfo;
import com.personal.model.FacultyInfo;




@Repository(value = "ChildInfoDao")
public class FacultyInfoDao extends BaseFaultyInfo
{
	
	@Autowired
	public JdbcTemplate jdbcTemplate;
public void saveInfo(FacultyInfo facultyInfo){
	String sql= "insert into faculty (id, facultyName) values(?,?)";
	jdbcTemplate.update(sql, new Object [] {facultyInfo.getId(), facultyInfo.getFacultyName()});
}


}

