package com.lzl.work.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import com.lzl.work.bean.Order;
import com.lzl.work.bean.Task;
import com.lzl.work.dao.OrderDao;
import com.lzl.work.dao.TaskDao;
import com.lzl.work.employer.bean.Employer;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TaskAction extends ActionSupport{

	private TaskDao taskDao;
	private Task task;
	private String action;
	private String result ;
	private Employer employer;
	private String newNum;
	private List<Task> list;
	
	private OrderDao orderDao;
	private List<Order> olist;
	
	private int currentPage;
	private Page page;
	
	public String addTask(){
		if("add".equals(action)){
			this.task.setDeleted(0);
			this.task.setStarttime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			this.taskDao.add(task);
			result = "ok";
		}
		this.newNum = new SimpleDateFormat("yyyyMMdd").format(new Date()) + new Random().nextInt(10000);
		this.employer= (Employer)ActionContext.getContext().getSession().get("employer");
		return "addTask";
	}
	
	public String updateTask(){
		if("update".equals(action)){
			this.taskDao.update(task);
			return this.taskByEmp();
		}
		this.task = (Task) this.taskDao.get(task);
		return "updateTask";
	}
	
	public String deleteTask(){
		this.taskDao.delete(this.task);
		return this.taskList();
	}
	
	public String taskByEmp(){
		if("delete".equals(action)){
			this.taskDao.delete(task);
		}
		this.employer= (Employer)ActionContext.getContext().getSession().get("employer");
		this.list = this.taskDao.list(employer.getId());
		return "taskByEmp";
	}
	
	public String taskList(){
		this.page = PageUtil.createPage(this.taskDao.getCount(false), currentPage);
		this.list = this.taskDao.list(page,false);
		return "taskList";
	}
	
	public String taskMsg(){
		this.task = (Task) this.taskDao.get(task);
		this.task.setContent(this.task.getContent().replace("\n", "<br/><br/>"));
		this.olist = this.orderDao.list(task.getId());
		return "taskMsg";
	}
	
	public Employer getEmployer() {
		return employer;
	}
	public void setEmployer(Employer employer) {
		this.employer = employer;
	}
	public TaskDao getTaskDao() {
		return taskDao;
	}
	public void setTaskDao(TaskDao taskDao) {
		this.taskDao = taskDao;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getNewNum() {
		return newNum;
	}

	public void setNewNum(String newNum) {
		this.newNum = newNum;
	}

	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}

	public List<Task> getList() {
		return list;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	public List<Order> getOlist() {
		return olist;
	}

	public void setOlist(List<Order> olist) {
		this.olist = olist;
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

	public void setList(List<Task> list) {
		this.list = list;
	}
	
}
