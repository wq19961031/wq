package org.fkit.service.impl;


	import java.util.List;

	import org.fkit.domain.Admin;
	import org.fkit.domain.Order;
	import org.fkit.domain.Book;
	import org.fkit.mapper.AdminMapper;
	import org.fkit.service.AdminService;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Isolation;
	import org.springframework.transaction.annotation.Propagation;
	import org.springframework.transaction.annotation.Transactional;
		/**
		 * User服务层接口实现类
		 * @Service("userService")用于将当前类注释为一个Spring的bean，名为userService
		 * */
		@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
		@Service("adminService")
		public class AdminServiceImpl implements AdminService {
			
			/**
			 * 自动注入UserMapper
			 * */
			@Autowired
			private AdminMapper adminMapper;

			/**
			 * UserService接口login方法实现
			 * @see { UserService }
			 * */
			@Transactional(readOnly=true)
			@Override
			public Admin adminlogin(String adminname, String adminpassword) {
				// TODO Auto-generated method stub
				return adminMapper.findWithLoginnameAndPassword(adminname, adminpassword);
			}

}
