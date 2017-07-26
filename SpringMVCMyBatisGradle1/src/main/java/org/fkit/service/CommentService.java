package org.fkit.service;

import java.util.List;

import org.fkit.domain.Comment;



public interface CommentService {
	Comment com(String logistica,String quality,String service,String comments,String image5 );

	List <Comment> getAll();
}
