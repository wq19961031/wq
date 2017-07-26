package org.fkit.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Admin;

public interface AdminMapper {
	@Select("select * from tb_admin where adminloginname = #{adminloginname} and adminpassword = #{adminpassword}")
	Admin findWithLoginnameAndPassword(@Param("adminloginname")String adminloginname,@Param("adminpassword") String adminpassword);
}
