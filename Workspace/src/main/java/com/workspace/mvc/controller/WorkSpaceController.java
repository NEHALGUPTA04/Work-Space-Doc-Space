package com.workspace.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.workspace.mvc.bean.WorkSpace;
import com.workspace.mvc.dao.WorkSpaceDao;

@Controller
public class WorkSpaceController {
	@Autowired
	WorkSpaceDao daoimpl;
	
	public void setDaoimpl(WorkSpaceDao daoimpl) {
		this.daoimpl = daoimpl;
	}

	@RequestMapping(value = "/createnew", method = RequestMethod.GET)
	public String newWork()
	{
		return "createnew";
	}
	@RequestMapping(value = "/newWork", method = RequestMethod.POST)
	public String creation(@RequestParam(name = "workSpaceName") String workName)
	{
		WorkSpace workSpace = new WorkSpace();
		workSpace.setWorkspaceName(workName);
		if(daoimpl.addWork(workSpace))
		{
			return "createdWork";
		}
		return null;
	}
}
