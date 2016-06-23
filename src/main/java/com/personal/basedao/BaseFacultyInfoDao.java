package com.personal.basedao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.simple.ParameterizedBeanPropertyRowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.transaction.annotation.Transactional;

import com.personal.model.FacultyInfo;

public class BaseFacultyInfoDao {

	@Autowired
	public JdbcTemplate jdbcTemplate;

	public final String INSERT_SQL = "INSERT INTO faculty( year, subject, facultyName, facultyInfo, role, updatedBy, updatedOn) values (?, ?, ?, ?, ?, ?, ?)";

	/* this should be conditional based on whether the id is present or not */
	@Transactional
	public void save(final FacultyInfo facultyInfo) {
		if (facultyInfo.getId() == 0) {

			KeyHolder keyHolder = new GeneratedKeyHolder();
			int update = jdbcTemplate.update(new PreparedStatementCreator() {
				public PreparedStatement createPreparedStatement(
						Connection connection) throws SQLException {

					PreparedStatement ps = connection.prepareStatement(
							INSERT_SQL, new String[] { "id" });
					ps.setString(1, facultyInfo.getFacultyInfo());
					ps.setString(2, facultyInfo.getFacultyName());
					ps.setString(3, facultyInfo.getRole());
					ps.setString(4, facultyInfo.getSubject());
					ps.setString(5, facultyInfo.getUpdatedBy());
					ps.setString(6, facultyInfo.getUpdatedOn());
					ps.setString(6, facultyInfo.getYear());
					return ps;
				}
			}, keyHolder);

			Number unId = keyHolder.getKey();
			facultyInfo.setId(unId.intValue());

		} else {

			String sql = "UPDATE faculty  set year = ? ,subject = ? ,facultyName = ? ,facultyInfo = ? ,role = ? ,updatedBy = ? ,updatedOn = ?  where id = ? ";

			jdbcTemplate.update(sql, new Object[] { facultyInfo.getFacultyInfo(),
					facultyInfo.getSubject(), facultyInfo.getFacultyName(),
					facultyInfo.getUpdatedBy(), facultyInfo.getRole(),
					facultyInfo.getUpdatedOn(), facultyInfo.getId() });
		}
	}

	@Transactional
	public void delete(int id) {
		String sql = "DELETE FROM personal_info WHERE id=?";
		jdbcTemplate.update(sql, new Object[] { id });
	}

	public FacultyInfo getById(int id) {
		String sql = "SELECT * from faculty where id = ? ";
		List<FacultyInfo> retlist = jdbcTemplate.query(sql,
				new Object[] { id }, ParameterizedBeanPropertyRowMapper
						.newInstance(FacultyInfo.class));
		if (retlist.size() > 0)
			return retlist.get(0);
		return null;
	}

}
