package com.lzl.work.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.lzl.work.bean.Order;

public class OrderDao extends BaseDao {
	
	public void delete(Object o){
		this.getHibernateTemplate().delete(o);
	}

	public boolean check(int tid,int sid){
		List<Order> list = this.getHibernateTemplate().find("from Order o where o.task=" + tid + " and o.student=" + sid);
		if(list == null || list.size() == 0)
			return false;
		else return true;
	}
	
	public List<Order> list(int tid){
		return this.getHibernateTemplate().find("from Order o where o.task=" + tid);
	}
	
	public List<Order> listByStu(int sid){
		return this.getHibernateTemplate().find("from Order o where o.student=" + sid);
	}
	
	public void comment(final Order o){
		this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "update Order o set o.comment=:comment where o.student=:sid and o.task=:tid";
				Query q = s.createQuery(hql);
				q.setString("comment", o.getComment());
				q.setInteger("sid",o.getStudent().getId());
				q.setInteger("tid", o.getTask().getId());
				q.executeUpdate();
				return null;
			}
		});
	}
	
	public void handle(final int id,final int state){
this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "update Order o set o.state=:state where o.id=:id";
				Query q = s.createQuery(hql);
				q.setInteger("state", state);
				q.setInteger("id", id);
				q.executeUpdate();
				return null;
			}
		});
	}
	
}
