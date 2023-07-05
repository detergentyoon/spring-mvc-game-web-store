package com.twistedfae.model;

import java.math.BigDecimal;
import java.util.List;

public class CartVO {

	private String user_id;
	private int game_id;
	private List<String> game_ids;
	private String title;
	private String category; // 분류
	private String thumbnail1; // 사진 url
	private String formattedOriginalPrice;
	private String formattedDiscountedPrice;
	private BigDecimal original_price; //원가
	private BigDecimal discount_rate; //할인률
	private BigDecimal discounted_price; //할인가
	private String  totalPrice;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getGame_id() {
		return game_id;
	}
	public void setGame_id(int game_id) {
		this.game_id = game_id;
	}
	public String getTitle() {
		return title;
	}
	public String getThumbnail1() {
		return thumbnail1;
	}
	public String getFormattedOriginalPrice() {
		return formattedOriginalPrice;
	}
	public String getFormattedDiscountedPrice() {
		return formattedDiscountedPrice;
	}
	public BigDecimal getOriginal_price() {
		return original_price;
	}
	public BigDecimal getDiscount_rate() {
		return discount_rate;
	}
	public BigDecimal getDiscounted_price() {
		return discounted_price;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setThumbnail1(String thumbnail1) {
		this.thumbnail1 = thumbnail1;
	}
	public void setFormattedOriginalPrice(String formattedOriginalPrice) {
		this.formattedOriginalPrice = formattedOriginalPrice;
	}
	public void setFormattedDiscountedPrice(String formattedDiscountedPrice) {
		this.formattedDiscountedPrice = formattedDiscountedPrice;
	}
	public void setOriginal_price(BigDecimal original_price) {
		this.original_price = original_price;
	}
	public void setDiscount_rate(BigDecimal discount_rate) {
		this.discount_rate = discount_rate;
	}
	public void setDiscounted_price(BigDecimal discounted_price) {
		this.discounted_price = discounted_price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public List<String> getGame_ids() {
		return game_ids;
	}
	public void setGame_ids(List<String> game_ids) {
		this.game_ids = game_ids;
	}
	public String  getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String  totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
	
}
