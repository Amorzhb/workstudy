package com.lzl.work.bean;
/**
 * 奖惩信息实体类
 * @author 李梦洁
 *
 */
public class Rewards implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 学生id
	 */
	private Integer studentId;
	/**
	 * 学生姓名
	 */
	private String studentName;
	/**
	 * 时间
	 */
	private String date;
	/**
	 * 内容
	 */
	private String content;
	/**
	 * 奖惩类型
	 */
	private String type;
	/**
	 * 删除状态
	 */
	private Integer deleted;
	
	
	public Integer getDeleted() {
		return deleted;
	}
	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
		
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getStudentId() {
		return studentId;
	}
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
