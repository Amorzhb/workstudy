package com.lzl.work.bean;
/**
 * �ۺ�����ʵ����
 * @author ���ν�
 *
 */
public class Exercise {
	/**
	 * ����id
	 */
	private Integer id;
	/**
	 * ѧ������
	 */
	private Integer studentId;
	/**
	 * ѧ������
	 */
	private String studentName;
	/**
	 * ˼������
	 */
	private String thought;
	/**
	 * ֪ʶ
	 */
	private String knowledge; 
	/**
	 * �Ļ�����
	 */
	private String culture;
	/**
	 * ����
	 */
	private String method; 
	/**
	 * ����
	 */
	private String ability; 
	/**
	 * ѧҵ
	 */
	private String studies; 
	/**
	 * ����
	 */
	private String mentally; 
	/**
	 * ���
	 */
	private String feeling; 
	/**
	 * ����
	 */
	private String healthy;
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
	public String getThought() {
		return thought;
	}
	public void setThought(String thought) {
		this.thought = thought;
	}
	public String getKnowledge() {
		return knowledge;
	}
	public void setKnowledge(String knowledge) {
		this.knowledge = knowledge;
	}
	public String getCulture() {
		return culture;
	}
	public void setCulture(String culture) {
		this.culture = culture;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getAbility() {
		return ability;
	}
	public void setAbility(String ability) {
		this.ability = ability;
	}
	public String getStudies() {
		return studies;
	}
	public void setStudies(String studies) {
		this.studies = studies;
	}
	public String getMentally() {
		return mentally;
	}
	public void setMentally(String mentally) {
		this.mentally = mentally;
	}
	public String getFeeling() {
		return feeling;
	}
	public void setFeeling(String feeling) {
		this.feeling = feeling;
	}
	public String getHealthy() {
		return healthy;
	}
	public void setHealthy(String healthy) {
		this.healthy = healthy;
	}
	@Override
	public String toString() {
		return "Exercise [id=" + id + ", studentId=" + studentId
				+ ", studentName=" + studentName + ", thought=" + thought
				+ ", knowledge=" + knowledge + ", culture=" + culture
				+ ", method=" + method + ", ability=" + ability + ", studies="
				+ studies + ", mentally=" + mentally + ", feeling=" + feeling
				+ ", healthy=" + healthy + "]";
	}	
}
