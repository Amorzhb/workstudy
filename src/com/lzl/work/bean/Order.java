package com.lzl.work.bean;

import com.lzl.work.student.bean.Student;

/**
 * 
 * @author ���ν�
 *
 */

public class Order implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	/**
	 * ����
	 */
	private Integer id;
	/**
	 * ѧ��ʵ����
	 */
	private Student student;
	/**
	 * ����ʵ����
	 */
	private Task task;
	/**
	 * ������
	 */
	private String num;
	/**
	 * ״̬
	 */
	private Integer state;
	/**
	 * ����
	 */
	private String comment;
	/**
	 * ʱ��
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