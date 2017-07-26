package org.fkit.service;

import static org.junit.Assert.*;

import org.fkit.domain.User;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.web.servlet.view.RedirectView;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations={"classpath:applicationContext.xml","classpath:springmvc-config.xml"})
public class UserServiceTest {
	
	@Autowired
	private UserService UserService;
	
	@Test
	public void testLogin() {
		User user=UserService.login("wq", "123456");
		if(user!=null){System.out.println("登录成功");

	}else{
		System.out.println("登录失败");}
		
		 }
	

	@Test
	public void testRegister() {
		User user = UserService.register("wq", "123456","18852140310","451835585@qq.com");
		if (user != null) {

		System.out.println("注册成功");
		} else {
			System.out.println("注册失败");
		}
	}
	
	
	@Test
	public void testFind() {
		User user=UserService.findPasswordEmail("wq", "451835585@qq.com");
		if(user!=null)
		{System.out.println("发送邮件成功");

	}else{
		System.out.println("发送邮件失败");}
		
		 }

}
