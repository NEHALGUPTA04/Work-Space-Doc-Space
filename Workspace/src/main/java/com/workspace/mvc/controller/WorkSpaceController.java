package com.workspace.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.workspace.mvc.bean.Member;
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
	public ModelAndView creation(WorkSpace workspace)
	{
		ModelAndView mv = null;
		if(daoimpl.addWork(workspace))
		{
			mv = new ModelAndView("createdWork");
			mv.addObject("WNAME", workspace.getWorkspaceName());
		}
		return mv;
	}
	
	@RequestMapping(value = "/addMember", method = RequestMethod.GET)
	public ModelAndView addMember(WorkSpace workSpace)
	{
		ModelAndView mv = new ModelAndView("addMember");
		mv.addObject("Workspace", workSpace);
		return mv;
		
	}
	
	@RequestMapping(value = "/getAllWork", method = RequestMethod.GET)
	public ModelAndView getAllWork()
	{
		List<WorkSpace> lst = daoimpl.getAll();
		ModelAndView mv = null;
		if(lst.size()>0)
		{
			mv = new ModelAndView("getAll");
			mv.addObject("LIST", lst);
		}
		else
		{
			mv = new ModelAndView("NoWorkFound");
		}
		return mv;
	}

}
