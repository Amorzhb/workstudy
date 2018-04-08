package com.lzl.work.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.lzl.work.bean.Exercise;
import com.lzl.work.dao.ExerciseDao;
import com.lzl.work.student.bean.Student;
import com.lzl.work.student.dao.StudentDao;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ExerciseAction extends ActionSupport implements ServletRequestAware{
	private ExerciseDao exerciseDao;
	private StudentDao studentDao;
	private Exercise exercise;
	private String result;
	private int currentPage ;
	private Page page;
	private List<Exercise> list;
	HttpServletRequest request;
	
	@Override
	public String execute() throws Exception {
		this.exercise = (Exercise)ActionContext.getContext().getSession().get("exercise");
		return super.execute();
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
	 * 查询所有信息
	 * @return
	 */
	public String list(){
		this.studentName();
		String studentId = request.getParameter("studentId");
		this.page = PageUtil.createPage(this.exerciseDao.getCount(studentId), currentPage);
		this.list =this.exerciseDao.list(page);
		this.request.setAttribute("list", list);
		return "list";
	}	
	/**
	 * 添加信息
	 * @return
	 */
	public String addExercise(){
		this.studentName();
		String action = request.getParameter("action");
		if("add".equals(action)){
			this.exercise.setDeleted(0);		
			this.exerciseDao.add(exercise);
			result = "ok";			
		}		
		return "addExercise";
	}
	/**
	 * 更新信息
	 * @return
	 * @throws Exception
	 */
	public String updateExercise(){
		this.studentName();
		String action = request.getParameter("action");
		if("update".equals(action)){
			this.exerciseDao.update(exercise);
			return this.exerciseByEmp();
		}
		this.exercise = (Exercise) this.exerciseDao.get(exercise);
		this.request.setAttribute("exercise", exercise);
		return "updateExercise";
	}
	/**
	 * 删除信息
	 * @return
	 */
	public String exerciseByEmp(){
		String action = request.getParameter("action");
		if("delete".equals(action)){
			this.exerciseDao.delete(exercise);
		}
		return "list";
	}
	/**
	 * 查看详情
	 * @return
	 */
	public String exerciseMsg(){
		this.studentName();
		this.exercise = (Exercise) this.exerciseDao.get(exercise);
		return "exerciseMsg";
	}
	
	public ExerciseDao getExerciseDao() {
		return exerciseDao;
	}

	public void setExerciseDao(ExerciseDao exerciseDao) {
		this.exerciseDao = exerciseDao;
	}

	public Exercise getExercise() {
		return exercise;
	}

	public void setExercise(Exercise exercise) {
		this.exercise = exercise;
	}

	public List<Exercise> getList() {
		return list;
	}

	public void setList(List<Exercise> list) {
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
