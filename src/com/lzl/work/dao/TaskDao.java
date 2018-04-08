package com.lzl.work.dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.lzl.work.bean.Task;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;

public class TaskDao extends BaseDao{

	@SuppressWarnings("unchecked")
	public List<Task> list(int eid){
		String hql = "from Task t where t.employer=" + eid + " and t.deleted=0";
		return this.getHibernateTemplate().find(hql);
	}
	
	public int getCount(final boolean temp){
		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String now = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
				String hql = "select count(*) from Task t where t.deleted=0";
				if(!temp)
					hql += " and t.enddate>='"+now+"'";
				return s.createQuery(hql).uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	
	@SuppressWarnings("unchecked")
	public List<Task> list(final Page p,final boolean temp){
		return this.getHibernateTemplate().executeFind(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String now = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
				String hql = "from Task t where t.deleted=0";
				if(!temp)
					hql += " and t.enddate>='"+now+"'";
				hql += " order by t.starttime desc";
				return s.createQuery(hql).setFirstResult(p.getBeginIndex()).setMaxResults(PageUtil.EVERYPAGE).list();
			}
		});
	}
}
