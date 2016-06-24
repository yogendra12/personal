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

import com.personal.dao.PersonalInfoDao;
import com.personal.model.PersonalInfo;

@Controller
public class BaseController {
	@Autowired
	PersonalInfoDao personalInfoDao;
	
	@RequestMapping(value = "/personal")
	public String getPersonalPage( ModelMap model) {
		System.out.println("this is the sample sample page...");
		return "personal";
	}
	
	@RequestMapping(value = "/aluminiHome")
	public String getaluminiHomePage( ModelMap model) {
		System.out.println("alumini page...");
		return "alumini";
	}
	
	
	@RequestMapping(value = "/importcsv")
	public @ResponseBody String importCSVData(@ModelAttribute PersonalInfo personalInfo, ModelMap model, HttpServletRequest request) {
		String s = request.getParameter("jso");
		
		JSONArray array = new JSONArray(s);
		for (int i=0; i < array.length() ; i ++){
			JSONObject a = (JSONObject) array.get(i);
			personalInfo.setRollNo((a.getString("rollNo")));
			personalInfo.setName(a.getString("name"));
			personalInfoDao.saveInfo(personalInfo);
		}
		
		return "suc";
	}
}
