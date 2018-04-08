package com.lzl.work.action;

import com.lzl.work.employer.bean.Employer;
import com.lzl.work.employer.dao.EmployerDao;
import com.lzl.work.student.bean.Student;
import com.lzl.work.student.dao.StudentDao;
import com.opensymphony.xwork2.ActionContext;

public class BaseAction {
	private EmployerDao employerDao;
	private StudentDao studentDao;
	private String username;
	private String password;
	private int role;
	private String action;
	
	private String result;
	
	public String reg() throws Exception{
		if(role == 1){
			Student s = new Student();
			s.setUsername(username);
			s.setPassword(password);
			s.setDeleted(0);
			this.studentDao.add(s);
			this.result = "ok";
		}else{
			Employer e = new Employer();
			e.setUsername(username);
			e.setPassword(password);
			e.setDeleted(0);
			this.employerDao.add(e);
			this.result = "ok";
		}
		return "regOk";
	}
	
	public String login() throws Exception{
		if(role == 1){
			Student s = this.studentDao.login(username, password);
			if(s == null){
				result = "fail";
				return "loginFail";
			}else{
				ActionContext.getContext().getSession().put("student", s);
			}
			return "studentIndex";
		}else{
			Employer e = this.employerDao.login(username, password);
			if(e == null){
				result = "fail";
				return "loginFail";
			}else{
				ActionContext.getContext().getSession().put("employer", e);
			}
			return "employerIndex";
		}
	}
	
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public EmployerDao getEmployerDao() {
		return employerDao;
	}
	public void setEmployerDao(EmployerDao employerDao) {
		this.employerDao = employerDao;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public StudentDao getStudentDao() {
		return studentDao;
	}

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public int getRole() {
		return role;
	}
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public void setRole(int role) {
		this.role = role;
	}

}
