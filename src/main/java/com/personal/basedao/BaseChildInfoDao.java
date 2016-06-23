
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

import com.personal.model.ChildInfo;


public class BaseChildInfoDao{

@Autowired public JdbcTemplate jdbcTemplate;

 
	public final String INSERT_SQL = "INSERT INTO child_Info( roll_no, child_first_name, child_last_name, course_studying, child_img_path) values (?, ?, ?, ?, ?)"; 





	/* this should be conditional based on whether the id is present or not */
	@Transactional
	public void save(final ChildInfo childInfo) 
	{
	if(childInfo.getId() == 0)	{

	KeyHolder keyHolder = new GeneratedKeyHolder();
	int update = jdbcTemplate.update(
			new PreparedStatementCreator() {
					public PreparedStatement 
					createPreparedStatement(Connection connection) throws SQLException {
	
					PreparedStatement ps =
									connection.prepareStatement(INSERT_SQL,new String[]{"id"});
	ps.setString(1, childInfo.getRollNo());
ps.setString(2, childInfo.getChildFirstName());
ps.setString(3, childInfo.getChildLastName());
ps.setString(4, childInfo.getCourseStudying());
ps.setString(5, childInfo.getChildImgPath());

							return ps;
						}
				},
				keyHolder);
				
				Number unId = keyHolder.getKey();
				childInfo.setId(unId.intValue());
				

		}
		else
		{

			String sql = "UPDATE child_Info  set roll_no = ? ,child_first_name = ? ,child_last_name = ? ,course_studying = ? ,child_img_path = ?  where id = ? ";
	
			jdbcTemplate.update(sql, new Object[]{childInfo.getRollNo(),childInfo.getChildFirstName(),childInfo.getChildLastName(),childInfo.getCourseStudying(),childInfo.getChildImgPath(),childInfo.getId()});
		}
	}
		
		@Transactional
		public void delete(int id) {
			String sql = "DELETE FROM child_Info WHERE id=?";
			jdbcTemplate.update(sql, new Object[]{id});
		}
		

	 public ChildInfo getById(int id) {
			String sql = "SELECT * from child_Info where id = ? ";
			List<ChildInfo> retlist = jdbcTemplate.query(sql,
			new Object[]{id},
			ParameterizedBeanPropertyRowMapper.newInstance(ChildInfo.class));
			if(retlist.size() > 0)
				return retlist.get(0);
			return null;
		}

	

}
