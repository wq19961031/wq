package org.fkit.controller;

import java.util.List;

import org.fkit.domain.Comment;
import org.fkit.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommentController {
	@Autowired
	@Qualifier("commentService")
	private CommentService commentService;
	
	
	
	
	@RequestMapping(value="total")
	 public String main (Model model){
		// �������ͼ�鼯��
		List<Comment> comment_list = commentService.getAll();
		// ��ͼ�鼯����ӵ�model����
		model.addAttribute("comment_list", comment_list);
		// ��ת��mainҳ��
		return "total";
	}
	
	@RequestMapping(value="/com")
	 public ModelAndView com(
						String logistica,
						String quality, 
						String service, 
						String comments,
						String image5,
					   ModelAndView mv ){
	   Comment com  = commentService.com(logistica, quality, service,comments, image5);
		   if(com != null){
				// ת����loginForm����
				mv.setViewName("comment");
			}
			else{
				// ע��ʧ�ܣ�����ʧ����ʾ��Ϣ������ת��ע��ҳ��
				mv.addObject("message", "评论失败");
				mv.setViewName("total");
			}
			return mv;
	}

}
