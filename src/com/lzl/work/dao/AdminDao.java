package com.lzl.work.dao;

import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.lzl.work.employer.bean.Admin;

public class AdminDao extends BaseDao {

	public Admin login(final String username,final String password){
		return (Admin) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "from Admin a where a.username=:name and a.password=:pass";
				Query q = s.createQuery(hql);
				q.setString("name", username);
				q.setString("pass", password);
				return q.uniqueResult();
			}
		});
	}
}
