
package com.personal.basedao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.simple.ParameterizedBeanPropertyRowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.personal.model.Faculty;


public class BaseFacultyDao{

@Autowired public JdbcTemplate jdbcTemplate;

 
	public final String INSERT_SQL = "INSERT INTO faculty( year, subject, faculty_Name, faculty_Info, role, updated_By, updated_On) values (?, ?, ?, ?, ?, ?, ?)"; 





	/* this should be conditional based on whether the id is present or not */
	@Transactional
	public void save(final Faculty faculty) 
	{
	if(faculty.getId() == 0)	{

	KeyHolder keyHolder = new GeneratedKeyHolder();
	int update = jdbcTemplate.update(
			new PreparedStatementCreator() {
					public PreparedStatement 
					createPreparedStatement(Connection connection) throws SQLException {
	
					if(faculty.getUpdatedOn() == null)
					{
					faculty.setUpdatedOn( new Date());
					}
					java.sql.Timestamp updatedOn = 
						new java.sql.Timestamp(faculty.getUpdatedOn().getTime()); 
							
					PreparedStatement ps =
									connection.prepareStatement(INSERT_SQL,new String[]{"id"});
	ps.setInt(1, faculty.getYear());
ps.setString(2, faculty.getSubject());
ps.setString(3, faculty.getFacultyName());
ps.setString(4, faculty.getFacultyInfo());
ps.setString(5, faculty.getRole());
ps.setString(6, faculty.getUpdatedBy());
ps.setTimestamp(7, updatedOn);

							return ps;
						}
				},
				keyHolder);
				
				Number unId = keyHolder.getKey();
				faculty.setId(unId.intValue());
				

		}
		else
		{

			String sql = "UPDATE faculty  set year = ? ,subject = ? ,faculty_Name = ? ,faculty_Info = ? ,role = ? ,updated_By = ? ,updated_On = ?  where id = ? ";
	
			jdbcTemplate.update(sql, new Object[]{faculty.getYear(),faculty.getSubject(),faculty.getFacultyName(),faculty.getFacultyInfo(),faculty.getRole(),faculty.getUpdatedBy(),faculty.getUpdatedOn(),faculty.getId()});
		}
	}
		
		@Transactional
		public void delete(int id) {
			String sql = "DELETE FROM faculty WHERE id=?";
			jdbcTemplate.update(sql, new Object[]{id});
		}
		

	 public Faculty getById(int id) {
			String sql = "SELECT * from faculty where id = ? ";
			List<Faculty> retlist = jdbcTemplate.query(sql,
			new Object[]{id},
			ParameterizedBeanPropertyRowMapper.newInstance(Faculty.class));
			if(retlist.size() > 0)
				return retlist.get(0);
			return null;
		}

	

}
