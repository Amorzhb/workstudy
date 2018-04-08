package com.lzl.work.employer.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.lzl.work.dao.BaseDao;
import com.lzl.work.employer.bean.Employer;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;

public class EmployerDao extends BaseDao {
	
	public Employer login(final String username,final String password){
		return (Employer) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "from Employer e where e.username=:username and e.password=:password and e.deleted=0";
				return s.createQuery(hql).setString("username", username).setString("password", password).uniqueResult();
			}
		});
	}
	
	public int getCount(){
		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				return s.createQuery("select count(*) from Employer s where s.deleted=0").uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	
	@SuppressWarnings("unchecked")
	public List<Employer> list (final Page p){
		return (List<Employer>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				return s.createQuery("from Employer s where s.deleted=0").setFirstResult(p.getBeginIndex()).setMaxResults(PageUtil.EVERYPAGE).list();
			}
		});
	}
}
