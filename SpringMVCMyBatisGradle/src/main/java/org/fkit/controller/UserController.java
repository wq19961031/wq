package org.fkit.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 * 处理用户请求控制器
 */
@Controller
public class UserController {

	/**
	 * 自动注入UserService
	 */
	@Autowired
	@Qualifier("userService")
	private UserService userService;

	
	
	


	/**
	 * 处理/login请求
	 */
	@RequestMapping(value = "/login")
	public ModelAndView login(String loginname, String password, ModelAndView mv, HttpSession session) {
		// 根据登录名和密码查找用户，判断用户登录
		User user = userService.login(loginname, password);
		if (user != null) {
			// 登录成功，将user对象设置到HttpSession作用范围域
			session.setAttribute("user", user);
			// 转发到main请求
			mv.setView(new RedirectView("/SpringMVCMyBatisGradle/main"));
		} else {
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录名或密码错误，请重新输入!");
			mv.setViewName("loginForm");
		}
		return mv;
	}



	@RequestMapping(value = "/register",method=RequestMethod.POST)

	public ModelAndView register(String loginname, String password,String phone,String mail, ModelAndView mv, HttpSession session) {
		// 根据输入的登录名和密码向数据库中添加新的用户信息,完成注册
		User user = userService.register(loginname, password,phone,mail);
		// 注册成功，将user对象设置到HttpSession作用范围域
		if (user != null) {
			// 登录成功，将user对象设置到HttpSession作用范围域
			session.setAttribute("user", user);
			// 转发到main请求
			mv.setView(new RedirectView("/SpringMVCMyBatisGradle/loginForm"));
		} else {
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "注册成功，请登录!");
			mv.setViewName("loginForm");
		}
		return mv;
	}

	/*
	 * 修改密码
	 */
	@RequestMapping(value="/updatepassword1")
	 public ModelAndView update( @RequestParam("loginname") String loginname,@RequestParam("password") String password,ModelAndView mv){
			userService.updatePassword(loginname, password);;
			// 设置客户端跳转到更新请求			
			mv.setViewName("main");
		// 返回
		return mv;
	}
	/*
	 * 通过邮件发送找回密码
	 */
	@RequestMapping(value="/find")
	 public ModelAndView find(String loginname,String mail,ModelAndView mv,HttpSession session,HttpServletResponse response) throws Exception{		
		User user=userService.findPasswordEmail(loginname, mail);	
	if(user!=null){
			StringBuffer url=new StringBuffer();
			StringBuilder builder=new StringBuilder();
			//邮件的正文
			builder.append("");
			url.append("您的密码是："+user.getPassword()+"");
			builder.append("");
			builder.append(""+url+"");
			builder.append("");
			SimpleEmail sendemail=new SimpleEmail();
			sendemail.setHostName("smtp.163.com");
			sendemail.setAuthentication("cheerwang96@163.com","wq19961031");
			sendemail.setCharset("UTF-8");
			try{
				sendemail.setCharset("UTF-8");
				sendemail.addTo(mail);
				sendemail.setFrom("cheerwang96@163.com");
				sendemail.setSubject("找回密码");
				sendemail.setMsg(builder.toString());
				sendemail.send();
			}catch(EmailException e){
				e.printStackTrace();
			}
			
			mv.setViewName("loginForm");
		}else{		
			
			response.getWriter().println("密码获取失败！");
		}
		return mv;	
		
	}
	
	
	
	
}
