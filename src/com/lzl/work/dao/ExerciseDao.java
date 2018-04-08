package com.lzl.work.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.lzl.work.bean.Exercise;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;

public class ExerciseDao extends BaseDao{
	public int getCount(final String studentId){

		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String student = "";
				if(studentId!=null && studentId!=""){
					student = "where studentId="+studentId;
				}
				return s.createQuery("select count(*) from Exercise r "+student).uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	@SuppressWarnings("unchecked")
	public List<Exercise> list (final Page p){
		return (List<Exercise>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				return s.createQuery("from Exercise r ").setFirstResult(p.getBeginIndex()).setMaxResults(PageUtil.EVERYPAGE).list();
			}
		});
	}
}
