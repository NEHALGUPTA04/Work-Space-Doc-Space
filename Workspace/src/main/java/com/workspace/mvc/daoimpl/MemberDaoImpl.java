package com.workspace.mvc.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;

import com.workspace.mvc.bean.Member;
import com.workspace.mvc.dao.MemberDao;

public class MemberDaoImpl implements MemberDao{
	private HibernateTemplate hTemplate;
	
	public HibernateTemplate gethTemplate() {
		return hTemplate;
	}

	public void sethTemplate(HibernateTemplate hTemplate) {
		this.hTemplate = hTemplate;
	}

	@Override
	public boolean enterWorkSpace(Member member) {
		boolean b = false;
		b = hTemplate.execute(new HibernateCallback<Boolean>() {
			
			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				String hquery = "FROM Member m WHERE studId = :sid AND workId = :wid";
				Query query = session.createQuery(hquery);
				query.setParameter("sid", member.getStudId());
				query.setParameter("wid", member.getWorkspace().getWorkdId());
				List<Member> lst = query.list();
				if(lst.size()>0)
				{
					return true;
				}
				else
				{
					return false;
				}
			}
		});
		return b;
	}

	@Override
	public boolean insertStud(Member member) {
		try {
			hTemplate.save(member);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
}
