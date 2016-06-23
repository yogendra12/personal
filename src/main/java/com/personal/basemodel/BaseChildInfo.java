package com.personal.basemodel;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



import java.util.Date;
import java.math.BigDecimal;


/**
 *
 * @author autogenerated
 */



public class BaseChildInfo 
{

/** Field mapping. **/
@Column(name= "roll_no")
protected String rollNo ;

/** Field mapping. **/
@Column(name= "child_first_name")
protected String childFirstName ;

/** Field mapping. **/
@Column(name= "child_last_name")
protected String childLastName ;

/** Field mapping. **/
@Column(name= "course_studying")
protected String courseStudying ;

/** Field mapping. **/
@Column(name= "child_img_path")
protected String childImgPath ;

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
		 /** Field mapping. **/
@Column(name= "id")
protected int id   = 0;

public String getRollNo()
{
  return rollNo;
}
public void setRollNo(final String rollNo)
{
  this.rollNo = rollNo;
}
public String getChildFirstName()
{
  return childFirstName;
}
public void setChildFirstName(final String childFirstName)
{
  this.childFirstName = childFirstName;
}
public String getChildLastName()
{
  return childLastName;
}
public void setChildLastName(final String childLastName)
{
  this.childLastName = childLastName;
}
public String getCourseStudying()
{
  return courseStudying;
}
public void setCourseStudying(final String courseStudying)
{
  this.courseStudying = courseStudying;
}
public String getChildImgPath()
{
  return childImgPath;
}
public void setChildImgPath(final String childImgPath)
{
  this.childImgPath = childImgPath;
}
public int getId()
{
  return id;
}
public void setId(final int id)
{
  this.id = id;
}

}