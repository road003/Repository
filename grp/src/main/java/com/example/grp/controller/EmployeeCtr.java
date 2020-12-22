package com.example.grp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/employee/employee_list")
public class EmployeeCtr {
	
	@RequestMapping("")
	public String getEmployeeHome() {
		return "/employee/employee_list";
	}
	
}
