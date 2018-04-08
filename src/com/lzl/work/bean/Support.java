package com.lzl.work.bean;
/**
 * 资助信息实体类
 * @author 李梦洁
 *
 */
public class Support {
	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 资助标准
	 */
	private String standard;
	/**
	 * 资助人数
	 */
	private String number;
	/**
	 * 资助类型
	 */
	private String type;
	/**
	 * 资助信息
	 */
	private String qualifications;
	/**
	 * 备注
	 */
	private String remarks;
	/**
	 * 学生姓名
	 */
	private String studentName;
	/**
	 * 学生ID
	 */
	private Integer studentId;
	/**
	 * 删除状态
	 */
	private Integer deleted;
	/**
	 * 申请状态
	 */
	private String apply;
			
	public String getApply() {
		return apply;
	}
	public void setApply(String apply) {
		this.apply = apply;
	}
	public Integer getDeleted() {
		return deleted;
	}
	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getQualifications() {
		return qualifications;
	}
	public void setQualifications(String qualifications) {
		this.qualifications = qualifications;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	
	public Integer getStudentId() {
		return studentId;
	}
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	@Override
	public String toString() {
		return "Support [id=" + id + ", standard=" + standard + ", number="
				+ number + ", type=" + type + ", qualifications="
				+ qualifications + ", remarks=" + remarks + ", studentName="
				+ studentName + ", studentId=" + studentId + "]";
	}
	
}
