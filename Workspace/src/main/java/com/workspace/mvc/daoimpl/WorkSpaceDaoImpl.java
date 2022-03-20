package com.workspace.mvc.daoimpl;

import org.springframework.orm.hibernate4.HibernateTemplate;

import com.workspace.mvc.bean.WorkSpace;
import com.workspace.mvc.dao.WorkSpaceDao;

public class WorkSpaceDaoImpl implements WorkSpaceDao{
	private HibernateTemplate hTemplate;


	public HibernateTemplate gethTemplate() {
		return hTemplate;
	}

	public void sethTemplate(HibernateTemplate hTemplate) {
		this.hTemplate = hTemplate;
	}

	public WorkSpaceDaoImpl() {
		super();
	}

	@Override
	public boolean addWork(WorkSpace workSpace) {
		try {
			hTemplate.save(workSpace);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
}
