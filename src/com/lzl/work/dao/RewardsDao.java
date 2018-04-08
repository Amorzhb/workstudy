package com.lzl.work.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.lzl.work.bean.Rewards;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;

public class RewardsDao extends BaseDao{
	public int getCount(final String type){

		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				return s.createQuery("select count(*) from Rewards r where r.type "+type).uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	@SuppressWarnings("unchecked")
	public List<Rewards> list (final Page p,final String type){
		return (List<Rewards>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				return s.createQuery("from Rewards r where r.type "+type).setFirstResult(p.getBeginIndex()).setMaxResults(PageUtil.EVERYPAGE).list();
			}
		});
	}
}
