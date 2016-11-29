package com.java1234.controller;

import com.java1234.entity.InfoType;
import com.java1234.entity.User;
import com.java1234.service.InfoTypeService;
import com.java1234.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller

public class UserController {

	@Resource
	private UserService userService;

	@Resource
	private InfoTypeService infoTypeService;
	
	@RequestMapping(value = "/isLogin")
	public String isLogin(Model model,HttpServletRequest request){
		HttpSession session = request.getSession();
		User currentUser=(User)session.getAttribute("currentUser");
		if(currentUser==null){
			return "/pages/admin/login";
		}else{
			//准备信息类别
			List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
			model.addAttribute("infoTypeList",infoTypeList);
			return "/pages/admin/view/adminTemp";
		}
	}

	@RequestMapping(value = "/login",method = RequestMethod.POST)
	public String login(Model model, User user,HttpServletRequest request){
		User currentUser=userService.login(user);
		model.addAttribute("user",user);
		if(currentUser==null){
			model.addAttribute("errorMsg","用户名或者密码错误！");
			return "/pages/admin/login";
		}else{
			HttpSession session=request.getSession();
			session.setAttribute("currentUser", currentUser);
			//准备信息类别
			List<InfoType> infoTypeList = infoTypeService.getInfoTypeList();
			model.addAttribute("infoTypeList",infoTypeList);
			return "/pages/admin/view/adminTemp";
		}
	}

	@RequestMapping(value = "login/user/loginOut")
	public String loginOut(HttpServletRequest request){
			HttpSession session=request.getSession();
			session.removeAttribute("currentUser");
			return "index";
		}

}
