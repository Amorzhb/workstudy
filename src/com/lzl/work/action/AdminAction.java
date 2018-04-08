package com.lzl.work.action;

import com.lzl.work.dao.AdminDao;
import com.lzl.work.employer.bean.Admin;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {

	private AdminDao adminDao;
	
	private String username;
	private String password;
	
	private String result ;
	
	public String password(){
		
		Admin a = (Admin) ActionContext.getContext().getSession().get("admin");
		a.setPassword(password);
		this.adminDao.update(a);
		result = "ok";
		return "pass";
	}
	
	public String login(){
		Admin a = this.adminDao.login(username, password);
		if(a == null){
			return "fail";
		}else{
			ActionContext.getContext().getSession().put("admin", a);
			return "index";
		}
	}
	
	public AdminDao getAdminDao() {
		return adminDao;
	}
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
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

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
}
