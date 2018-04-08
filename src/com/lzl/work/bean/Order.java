package com.lzl.work.bean;

import com.lzl.work.student.bean.Student;

/**
 * 
 * @author 李梦洁
 *
 */

public class Order implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 学生实体类
	 */
	private Student student;
	/**
	 * 任务实体类
	 */
	private Task task;
	/**
	 * 任务编号
	 */
	private String num;
	/**
	 * 状态
	 */
	private Integer state;
	/**
	 * 内容
	 */
	private String comment;
	/**
	 * 时间
	 */
	private String otime;
	public String getOtime() {
		return otime;
	}
	public void setOtime(String otime) {
		this.otime = otime;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
}