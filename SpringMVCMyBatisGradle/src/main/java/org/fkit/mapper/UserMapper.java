package org.fkit.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.User;

/**
 * UserMapper接口
 */
public interface UserMapper {

	/**
	 * 根据登录名和密码查询用户
	 * 
	 * @param String
	 *            loginname
	 * @param String
	 *            password
	 * @return 找到返回User对象，没有找到返回null
	 */
	@Select("select * from tb_user where loginname = #{loginname} and password = #{password}")
	User findWithLoginnameAndPassword(@Param("loginname") String loginname, @Param("password") String password);

	@Select("select * from tb_user where id=#{id}")
	@Result(id = true, column = "id", property = "id")
	User findWithId(@Param("id") int id);
	
	@Select("Insert into tb_user(loginname,password,phone,mail) values(#{loginname},#{password},#{phone},#{mail})")
	User insertuser(@Param("loginname")String loginname,@Param("password")String password,@Param("phone")String phone,@Param("mail")String mail);

	@Update("update tb_user set password= #{password} where loginname=#{loginname}")
	void updatePassword(@Param("loginname") String loginname,@Param("password") String password);
	
	/*
     * 找回密码 通过邮箱
     */
	@Select("select password from tb_user where loginname = #{loginname}")
	User findPassword(@Param("loginname") String loginname);
	
	@Select("select * from tb_user where loginname = #{loginname} and mail = #{mail}")
	User findPasswordEmail(@Param("loginname") String loginname,@Param("mail") String mail);
}
