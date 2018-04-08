package com.lzl.work.dao;

import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class BaseDao extends HibernateDaoSupport{
	
	public void add(Object o){
		this.getHibernateTemplate().save(o);
		this.getHibernateTemplate().flush();
	}
	@SuppressWarnings("unchecked")
	public void delete(final Object o){
		this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String name = o.getClass().getSimpleName();
				try {
					int id = (Integer) o.getClass().getMethod("getId", null).invoke(o,null);
					String hql = "update " + name + " o set o.deleted=1 where o.id=" + id;
					s.createQuery(hql).executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
				return null;
			}
		});
	}
	public void update(Object o){
		this.getHibernateTemplate().update(o);
	}
	
	public Object get(Object o){
		int id = 0;
		try {
			id = (Integer) o.getClass().getMethod("getId", null).invoke(o,null);
			System.out.println(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return this.getHibernateTemplate().get(o.getClass(), id);
	}
}
