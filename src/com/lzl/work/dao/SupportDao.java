package com.lzl.work.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.lzl.work.bean.Support;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;

public class SupportDao extends BaseDao{
	public int getCount(final String type,final String studentId){

		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String student = "";
				if(studentId!=null){
					student = "and r.id="+studentId;
				}
				return s.createQuery("select count(*) from Support r where r.type "+type+student).uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	@SuppressWarnings("unchecked")
	public List<Support> list (final Page p,final String type,final String studentId){
		return (List<Support>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
					String student = "";
					if(studentId!=null){
						student = "and r.id="+studentId;
					}
				return s.createQuery("from Support r where r.type "+type+student).setFirstResult(p.getBeginIndex()).setMaxResults(PageUtil.EVERYPAGE).list();
			}
		});
	}
}
