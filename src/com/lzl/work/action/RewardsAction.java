package com.lzl.work.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.lzl.work.bean.Rewards;
import com.lzl.work.dao.RewardsDao;
import com.lzl.work.student.bean.Student;
import com.lzl.work.student.dao.StudentDao;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RewardsAction extends ActionSupport implements ServletRequestAware{
	private RewardsDao rewardsDao;
	private StudentDao studentDao;
	private Rewards rewards;
	private String result;
	private int currentPage ;
	private Page page;
	private List<Rewards> list;
	HttpServletRequest request;
	
	@Override
	public String execute() throws Exception {
		this.rewards = (Rewards)ActionContext.getContext().getSession().get("rewards");
		return super.execute();
	}
	/**
	 * 查询所有奖惩信息
	 * @return
	 */
	public String list(){
		this.studentName();
		String type = request.getParameter("type");
		if(type==null||type==""){
			type="in(1,2)";
		}
		this.page = PageUtil.createPage(this.rewardsDao.getCount(type), currentPage);
		this.list =this.rewardsDao.list(page,type);
		this.request.setAttribute("list", list);
		return "list";
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
	 * 添加信息
	 * @return
	 */
	public String addRewards(){
		this.studentName();
		String action = request.getParameter("action");
		if("add".equals(action)){
			this.rewards.setDeleted(0);
			this.rewards.setDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			this.rewardsDao.add(rewards);
			result = "ok";	
			ActionContext.getContext().getSession().put("result",result);
		}		
		return "addRewards";
	}
	/**
	 * 更新信息
	 * @return
	 * @throws Exception
	 */
	public String updateRewards(){
		this.studentName();
		String action = request.getParameter("action");
		if("update".equals(action)){
			this.rewardsDao.update(rewards);
			return this.rewardsByEmp();
		}
		this.rewards = (Rewards) this.rewardsDao.get(rewards);
		this.request.setAttribute("rewards", rewards);
		return "updateRewards";
	}
	/**
	 * 删除信息
	 * @return
	 */
	public String rewardsByEmp(){
		String action = request.getParameter("action");
		if("delete".equals(action)){
			this.rewardsDao.delete(rewards);
		}
		return "list";
	}
	/**
	 * 查看详情
	 * @return
	 */
	public String rewardsMsg(){
		this.studentName();
		
		this.rewards = (Rewards) this.rewardsDao.get(rewards);
		this.rewards.setContent(this.rewards.getContent().replace("\n", "<br/><br/>"));		
		return "rewardsMsg";
	}
	
	public RewardsDao getRewardsDao() {
		return rewardsDao;
	}

	public void setRewardsDao(RewardsDao rewardsDao) {
		this.rewardsDao = rewardsDao;
	}

	public Rewards getRewards() {
		return rewards;
	}

	public void setRewards(Rewards rewards) {
		this.rewards = rewards;
	}

	public List<Rewards> getList() {
		return list;
	}

	public void setList(List<Rewards> list) {
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
