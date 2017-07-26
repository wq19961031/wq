package org.fkit.domain;

import java.util.List;

public class Collect {

	private int id;
    private List<Book> book;
	private int count;
	private int book_id;
	private int price;
	private String image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<Book> getBook() {
		return book;
	}
	public void setBook(List<Book> book) {
		this.book = book;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Collect [id=" + id + ", book=" + book + ", count=" + count + ", book_id=" + book_id + ", price=" + price
				+ ", image=" + image + "]";
	}
	
}