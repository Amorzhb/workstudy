package com.lzl.work.student.action;

import java.util.List;

import com.lzl.work.student.bean.Student;
import com.lzl.work.student.dao.StudentDao;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class StudentAction extends ActionSupport{

	private StudentDao studentDao;
	private Student student;
	private String action;
	private String result ;
	
	private int currentPage ;
	private Page page;
	private List<Student> list;
	
	@Override
	public String execute() throws Exception {
		this.student = (Student)ActionContext.getContext().getSession().get("student");
		return super.execute();
	}
	
	public String update() throws Exception{
		this.studentDao.update(student);
		ActionContext.getContext().getSession().put("student", student);
		this.result = "ok";
		return this.execute();
	}
	
	public String delete(){
		
		this.studentDao.delete(student);
		return this.list();
	}

	public String password() throws Exception{
		if("update".equals(action)){
			this.studentDao.update(student);
			ActionContext.getContext().getSession().put("student", student);
			this.result = "ok";
		}
		this.execute();
		return "pass";
	}
	
	public String list(){
		this.page = PageUtil.createPage(this.studentDao.getCount(), currentPage);
		this.list =this.studentDao.list(page);
		return "list";
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
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

	public StudentDao getStudentDao() {
		return studentDao;
	}

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<Student> getList() {
		return list;
	}

	public void setList(List<Student> list) {
		this.list = list;
	}
	
	
}
