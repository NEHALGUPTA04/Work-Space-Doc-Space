package com.workspace.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.workspace.mvc.bean.Member;
import com.workspace.mvc.dao.MemberDao;


@Controller
public class MemberController {
	@Autowired
	private MemberDao daoimpl;

	public void setDaoimpl(MemberDao daoimpl) {
		this.daoimpl = daoimpl;
	}


	@RequestMapping(value = "/workSpaceSignIn", method = RequestMethod.POST)
	public ModelAndView signIn(Member member)
	{
		ModelAndView mv;
		if(daoimpl.enterWorkSpace(member))
		{
			mv = new ModelAndView("signIn");
			mv.addObject("USERNAME", member.getStudName());
		}
		else
		{
			mv = new ModelAndView("failed");
		}
		return mv;
	}
	@RequestMapping(value = "/addMember", method = RequestMethod.GET)
	public String addMember(Member member)
	{
		return "addMember";
	}
	
	@RequestMapping(value = "/insertStud")
	public ModelAndView insertStud(@RequestParam(name = "studName")String sname)
	{
		ModelAndView mv = null;
		Member member = new Member();
		member.setStudName(sname);
		if(daoimpl.insertStud(member))
		{
			mv = new ModelAndView("added");
			mv.addObject("NAME", sname);
		}
		return mv;
	}
}
