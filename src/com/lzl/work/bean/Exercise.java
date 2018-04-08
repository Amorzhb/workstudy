package com.lzl.work.bean;
/**
 * 综合素质实体类
 * @author 李梦洁
 *
 */
public class Exercise {
	/**
	 * 主键id
	 */
	private Integer id;
	/**
	 * 学生主键
	 */
	private Integer studentId;
	/**
	 * 学生姓名
	 */
	private String studentName;
	/**
	 * 思想素质
	 */
	private String thought;
	/**
	 * 知识
	 */
	private String knowledge; 
	/**
	 * 文化素质
	 */
	private String culture;
	/**
	 * 方法
	 */
	private String method; 
	/**
	 * 能力
	 */
	private String ability; 
	/**
	 * 学业
	 */
	private String studies; 
	/**
	 * 心理
	 */
	private String mentally; 
	/**
	 * 情感
	 */
	private String feeling; 
	/**
	 * 健康
	 */
	private String healthy;
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
