package com.lzl.work.bean;
/**
 * ������Ϣʵ����
 * @author ���ν�
 *
 */
public class Support {
	/**
	 * ����
	 */
	private Integer id;
	/**
	 * ������׼
	 */
	private String standard;
	/**
	 * ��������
	 */
	private String number;
	/**
	 * ��������
	 */
	private String type;
	/**
	 * ������Ϣ
	 */
	private String qualifications;
	/**
	 * ��ע
	 */
	private String remarks;
	/**
	 * ѧ������
	 */
	private String studentName;
	/**
	 * ѧ��ID
	 */
	private Integer studentId;
	/**
	 * ɾ��״̬
	 */
	private Integer deleted;
	/**
	 * ����״̬
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
