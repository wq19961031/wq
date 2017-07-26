package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Comment;
import org.fkit.mapper.CommentMapper;
import org.fkit.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;



	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
	@Service("commentService")
	public class CommentServiceImpl implements CommentService {
		

		@Autowired
		private CommentMapper commentMapper;
		@Transactional(readOnly=true)
		
		@Override
		public List<Comment> getAll() {
			
			return commentMapper.findAll();
		}
		



		@Override
		public Comment com(String logistica, String quality, String service,String comments, String image5) {
			// TODO Auto-generated method stub
			return commentMapper.insertcomment(logistica, quality, service,comments, image5);
		}
}
