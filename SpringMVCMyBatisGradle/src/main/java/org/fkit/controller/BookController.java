package org.fkit.controller;

import java.util.List;

import org.fkit.domain.Book;
import org.fkit.service.BookService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * 处理图书请求控制器
 * */
@Controller
public class BookController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/main")
	 public String main(Model model){
		// 获得所有图书集合
		List<Book> book_list = bookService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("book_list", book_list);
		// 跳转到main页面
		return "main";
	}
	
	
	@RequestMapping(value="/products")
	 public String products(Model model){
		// 获得所有图书集合
		List<Book> book_list = bookService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("book_list", book_list);
		// 跳转到main页面
		return "products";
	}

	@RequestMapping(value="/singleitem")
	 public ModelAndView single(Integer id,Model model,ModelAndView mv){
		// 获得所有图书集合
		Book book = bookService.getone(id);
		// 将图书集合添加到model当中
		mv.addObject("book", book);
		mv.setViewName("forward:/single");
		// 跳转到main页面
		return mv;
	}
	
	
	
	@RequestMapping(value="/insertbook")
	 public ModelAndView insertbook(
						String name,
						String price, 
						String remark, 
						String image,
						String image_s,
						String image_l,

						
						
					   ModelAndView mv ){
	   Book insertbook  = bookService.insertbook(name, price,remark,image,image_s,image_l);
		   if(insertbook != null){
		
				mv.setViewName("adminmain");
			}
			else{
			
				mv.addObject("message", "该商品已存在!");
				mv.setViewName("adminmain");
			}
			return mv;
	 }
	
	
	
	
//	@RequestMapping(value="/detail1")
//	 public ModelAndView detail(@RequestParam("id") Integer id,Model model,ModelAndView mv){
		// 获得所有图书集合
//		Book book = bookService.selectByBookId2(id);
		// 将图书集合添加到model当中
//		mv.addObject("book", book);
//		mv.setViewName("forward:detail");
		// 跳转到main页面
//		return mv;
//	}
	
	
	
}
