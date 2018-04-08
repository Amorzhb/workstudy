package com.lzl.work.employer.action;

import java.util.List;

import com.lzl.work.employer.bean.Employer;
import com.lzl.work.employer.dao.EmployerDao;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EmployerAction extends ActionSupport{

	private EmployerDao employerDao;
	private Employer employer;
	private String action;
	private String result ;
	
	private int currentPage;
	private Page page;
	
	private List<Employer> list;
	
	@Override
	public String execute() throws Exception {
		this.employer = (Employer)ActionContext.getContext().getSession().get("employer");
		return super.execute();
	}
	
	public String update() throws Exception{
		this.employerDao.update(employer);
		ActionContext.getContext().getSession().put("employer", employer);
		this.result = "ok";
		return this.execute();
	}
	
	public String delete(){
		this.employerDao.delete(employer);
		return this.list();
	}
	
	public String list(){
		this.page = PageUtil.createPage(this.employerDao.getCount(), currentPage);
		this.list = this.employerDao.list(page);
		return "list";
	}

	public String password() throws Exception{
		if("update".equals(action)){
			this.employerDao.update(employer);
			ActionContext.getContext().getSession().put("employer", employer);
			this.result = "ok";
		}
		this.execute();
		return "pass";
	}
	
	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Employer getEmployer() {
		return employer;
	}

	public void setEmployer(Employer employer) {
		this.employer = employer;
	}

	public EmployerDao getEmployerDao() {
		return employerDao;
	}

	public void setEmployerDao(EmployerDao employerDao) {
		this.employerDao = employerDao;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public List<Employer> getList() {
		return list;
	}

	public void setList(List<Employer> list) {
		this.list = list;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	
}
