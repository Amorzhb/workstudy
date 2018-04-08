package com.lzl.work.student.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.lzl.work.dao.BaseDao;
import com.lzl.work.student.bean.Student;
import com.lzl.work.util.Page;
import com.lzl.work.util.PageUtil;

public class StudentDao extends BaseDao{

	public Student login(final String username,final String password){
		return (Student) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String hql = "from Student e where e.username=:username and e.password=:password and e.deleted=0";
				return s.createQuery(hql).setString("username", username).setString("password", password).uniqueResult();
			}
		});
	}
	
	
	public int getCount(){
		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				return s.createQuery("select count(*) from Student s where s.deleted=0").uniqueResult();
			}
		});
		
		return Long.valueOf(o.toString()).intValue();
	}
	
	@SuppressWarnings("unchecked")
	public List<Student> list (final Page p){
		return (List<Student>) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				return s.createQuery("from Student s where s.deleted=0").setFirstResult(p.getBeginIndex()).setMaxResults(PageUtil.EVERYPAGE).list();
			}
		});
	}
}
