package com.personal.basemodel;


import javax.persistence.Column;


/**
 *
 * @author autogenerated
 */



public class BaseFaultyInfo 
{

/** Field mapping. **/
@Column(name= "year")
protected String year ;

/** Field mapping. **/
@Column(name= "subject")
protected String subject ;
@Column(name= "facultyName")
protected String facultyName;
public String getFacultyName() {
	return facultyName;
}

public void setFacultyName(final String facultyName) {
	this.facultyName = facultyName;
}

/** Field mapping. **/
@Column(name= "facultyInfo")
protected String facultyInfo ;

/** Field mapping. **/
@Column(name= "role")
protected String role ;

/** Field mapping. **/
@Column(name= "updatedBy")
protected String updatedBy ;

/** Field mapping. **/
@Column(name= "updatedOn")
protected String updatedOn ;
@Column(name= "id")
protected int id   = 0;

public int getId() {
	return id;
}

public void setId(final int id) {
	this.id = id;
}

public String getYear() {
	return year;
}

public void setYear(final String year) {
	this.year = year;
}

public String getSubject() {
	return subject;
}

public void setSubject(final String subject) {
	this.subject = subject;
}

public String getFacultyInfo() {
	return facultyInfo;
}

public void setFacultyInfo(final String facultyInfo) {
	this.facultyInfo = facultyInfo;
}

public String getRole() {
	return role;
}

public void setRole(final String role) {
	this.role = role;
}

public String getUpdatedBy() {
	return updatedBy;
}

public void setUpdatedBy(final String updatedBy) {
	this.updatedBy = updatedBy;
}

public String getUpdatedOn() {
	return updatedOn;
}

public void setUpdatedOn(final String updatedOn) {
	this.updatedOn = updatedOn;
}



}