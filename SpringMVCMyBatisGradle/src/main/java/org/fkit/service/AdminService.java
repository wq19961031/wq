package org.fkit.service;

import org.fkit.domain.Admin;

public interface AdminService {
	/**
	 * 判断用户登录
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	Admin adminlogin(String adminloginname,String adminpassword);
}
