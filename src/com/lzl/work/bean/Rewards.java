package com.lzl.work.bean;
/**
 * ������Ϣʵ����
 * @author ���ν�
 *
 */
public class Rewards implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	/**
	 * ����
	 */
	private Integer id;
	/**
	 * ѧ��id
	 */
	private Integer studentId;
	/**
	 * ѧ������
	 */
	private String studentName;
	/**
	 * ʱ��
	 */
	private String date;
	/**
	 * ����
	 */
	private String content;
	/**
	 * ��������
	 */
	private String type;
	/**
	 * ɾ��״̬
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
