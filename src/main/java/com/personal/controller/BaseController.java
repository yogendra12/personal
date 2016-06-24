package com.personal.controller;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.personal.dao.FacultyInfoDao;
import com.personal.dao.PersonalInfoDao;
import com.personal.model.FacultyInfo;
import com.personal.model.PersonalInfo;

@Controller
public class BaseController {
	@Autowired
	PersonalInfoDao personalInfoDao;
	@Autowired
	FacultyInfoDao facultyInfoDao;

	@RequestMapping(value = "/personal")
	public String getPersonalPage(ModelMap model) {
		System.out.println("this is the sample sample page...");
		return "personal";
	}

	@RequestMapping(value = "/aluminiHome")
	public String getaluminiHomePage(ModelMap model) {
		System.out.println("alumini page...");
		return "alumini";
	}

	@RequestMapping(value = "/galleryHome")
	public String getGalleryHomePage(ModelMap model) {
		System.out.println("alumini page...");
		return "gallery";
	}

	@RequestMapping(value = "/eventHome")
	public String getEventHomePage(ModelMap model) {
		System.out.println("alumini page...");
		return "event";
	}

	@RequestMapping(value = "/regHome")
	public String getRegHomePage(ModelMap model) {
		System.out.println("alumini page...");
		return "reg";
	}

	@RequestMapping(value = "/facultyHome")
	public String getFacultyHomePage(ModelMap model) {
		System.out.println("alumini page...");
		return "faculty";
	}

	@RequestMapping(value = "/aboutHome")
	public String getAboutHomePage(ModelMap model) {
		System.out.println("alumini page...");
		return "about";
	}

	@RequestMapping(value = "/importRollCSV")
	public @ResponseBody String importCSVData(
			@ModelAttribute PersonalInfo personalInfo, ModelMap model,
			HttpServletRequest request) {
		String s = request.getParameter("jso");

		JSONArray array = new JSONArray(s);
		for (int i = 0; i < array.length(); i++) {
			JSONObject a = (JSONObject) array.get(i);
			personalInfo.setRollNo((a.getString("rollNo")));
			personalInfo.setName(a.getString("name"));
			personalInfoDao.saveInfo(personalInfo);
		}

		return "suc";
	}

	@RequestMapping(value = "/importFacCsv")
	public @ResponseBody String importFacCsv(
			@ModelAttribute FacultyInfo facultyInfo, ModelMap model,
			HttpServletRequest request) {
		String s = request.getParameter("jso");

		JSONArray array = new JSONArray(s);
		for (int i = 0; i < array.length(); i++) {
			JSONObject a = (JSONObject) array.get(i);
			facultyInfo.setFacultyId(a.getInt("fId"));
			facultyInfo.setYear(a.getString("year"));
			facultyInfo.setSubject(a.getString("subject"));
			facultyInfoDao.save(facultyInfo);
		}

		return "suc";
	}
}
