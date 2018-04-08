package com.lzl.work.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.lzl.work.bean.Support;
import com.lzl.work.dao.SupportDao;
import com.lzl.work.student.bean.Student;
import com.lzl.work.student.dao.StudentDao;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SupportAction extends ActionSupport implements ServletRequestAware{
	private SupportDao supportDao;
	private StudentDao studentDao;
	private Support support;
	private String result;
	private int currentPage ;
	private Page page;
	private List<Support> list;
	HttpServletRequest request;
	
	@Override
	public String execute() throws Exception {
		this.support = (Support)ActionContext.getContext().getSession().get("support");
		return super.execute();
	}
	/**
	 * 查询所有信息
	 * @return
	 */
	public String list(){
		this.studentName();
		String studentId = request.getParameter("studentId");
		String type = request.getParameter("type");
		if(type==null||type==""){
			type="in(1,2)";
		}
		this.page = PageUtil.createPage(this.supportDao.getCount(type,studentId), currentPage);
		this.list =this.supportDao.list(page,type,studentId);
		this.request.setAttribute("list", list);
		return "list";
	}
	/**
	 * 学生姓名回显
	 * @return
	 */
	public void studentName(){
		this.page = PageUtil.createPage(this.studentDao.getCount(), currentPage);
		List<Student> studentlist = studentDao.list(page);
		ActionContext.getContext().getSession().put("studentlist", studentlist);
	}
	/**
	 * 添加信息
	 * @return
	 */
	public String addSupport(){
		this.studentName();
		String action = request.getParameter("action");
		if("add".equals(action)){
			this.support.setDeleted(0);
			this.support.setApply("0");
			this.supportDao.add(support);
			result = "ok";			
		}		
		return "addSupport";
	}
	/**
	 * 更新信息
	 * @return
	 * @throws Exception
	 */
	public String updateSupport(){
		this.studentName();
		String action = request.getParameter("action");
		if("update".equals(action)){
			this.supportDao.update(support);
			return this.supportByEmp();
		}
		this.support = (Support) this.supportDao.get(support);
		this.request.setAttribute("support", support);
		return "updateSupport";
	}
	/**
	 * 删除信息
	 * @return
	 */
	public String supportByEmp(){
		String action = request.getParameter("action");
		if("delete".equals(action)){
			this.supportDao.delete(support);
		}
		return "list";
	}
	/**
	 * 查看详情
	 * @return
	 */
	public String supportMsg(){
		this.studentName();
		this.support = (Support) this.supportDao.get(support);
		this.support.setQualifications(this.support.getQualifications().replace("\n", "<br/><br/>"));		
		return "supportMsg";
	}
	
	public SupportDao getSupportDao() {
		return supportDao;
	}

	public void setSupportDao(SupportDao supportDao) {
		this.supportDao = supportDao;
	}

	public Support getSupport() {
		return support;
	}

	public void setSupport(Support support) {
		this.support = support;
	}

	public List<Support> getList() {
		return list;
	}

	public void setList(List<Support> list) {
		this.list = list;
	}
	
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
	}
	public StudentDao getStudentDao() {
		return studentDao;
	}
	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}
	
}
