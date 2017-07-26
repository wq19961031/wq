package org.fkit.service;

import java.util.List;

import org.fkit.domain.Book;


/**
 * Book服务层接口
 * */
public interface BookService {
	
	/**
	 * 查找所有图书
	 * @return Book对象集合
	 * */
	List<Book> getAll();
	Book getone(int book_id);


	Book insertbook(String name, String price, String remark, String image, String image_s, String image_l);

}
