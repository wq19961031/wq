package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.fkit.domain.Cart;
import org.fkit.domain.Collect;
import org.fkit.domain.User;
import org.fkit.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.SessionScope;

@Controller
public class CollectController {
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	@Autowired
	@Qualifier("collectService")
	private CollectService collectService;
	
	@RequestMapping(value = "/collect")
	public String collect(Model model) {
		
		// 获得所有图书集合
		List<Collect> collect_list = collectService.getAll();
		// 将图书集合添加到model当中
		
		model.addAttribute("collect_list", collect_list);
		// 跳转到cart页面
		return "collection";
	
	}
	//
	@RequestMapping(value = "/newcollect")
	public String newcollect(HttpServletRequest request,Model model) {
		String book_id = request.getParameter("book_id");
		int book_id_ = Integer.parseInt(book_id);
		Collect collect=collectService.findCollect(book_id_);
		if (collect == null) {
			collectService.saveCollect(book_id_);
		}else {			
			collectService.addCollect();
			
		}
		List<Collect> collect_list = collectService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		// 跳转到cart页面
		return "collection";
	}
	//清空购物车
	@RequestMapping(value = "/clearcollection")
	public String clearcollection(Model model) {
		collectService.clearCollect();
		List<Collect> collect_list = collectService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		// 跳转到main页面
		return "collection";
	}

	
	//取消购物车的东西
	@RequestMapping(value="/removecollection")
	public String removecollection(Model model,HttpServletRequest request){
		String book_id = request.getParameter("book_id");
		int book_id_ = Integer.parseInt(book_id);
		collectService.removeCollect(book_id_);
		List<Collect> collect_list = collectService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		// 跳转到cart页面
		return "collection";
	}
	
	//从购物车里增加数量
	@RequestMapping(value="/addcollection")
	public String addCollect(Model model,HttpServletRequest request){
		String book_id = request.getParameter("book_id");
		int book_id_ = Integer.parseInt(book_id);
		collectService.addCollect(book_id_);
		List<Collect> collect_list = collectService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		// 跳转到cart页面
		return "Collection";
	}
	//从购物车里减少数量
	@RequestMapping(value="/reducecollection")
	public String reducecollection(Model model,HttpServletRequest request){
		String book_id = request.getParameter("book_id");
		int book_id_ = Integer.parseInt(book_id);
		collectService.reduceCollect(book_id_);
		List<Collect> collect_list = collectService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		// 跳转到cart页面
		return "cart";
	}

}
