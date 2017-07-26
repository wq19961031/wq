package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Comment;


public interface CommentMapper {
	@Select("insert into tb_comment(logistica,quality,service,comments,image5) values(#{logistica},#{quality},#{service},#{comments},#{image5})")
	Comment insertcomment(@Param("logistica")String logistica,@Param("quality")String quality,@Param("service")String service,@Param("comments")String comments,
			@Param("image5")String image5);
	
	
	@Select(" select * from tb_comment ")
	List<Comment> findAll( );
}
