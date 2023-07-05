package com.twistedfae.model;
import java.math.BigDecimal;
import java.sql.Timestamp;
public class WishVO {

	private String user_id;
	private int game_id;
	private Timestamp date_added;
	private String title;
	private String thumbnail1; // 사진 url
	private int total_likes; // 총 추천 수
	private int likes_1; // 추천
	private int likes_0; // 비추천
	private String formattedOriginalPrice;
	private String formattedDiscountedPrice;
	private BigDecimal original_price; //원가
	private BigDecimal discount_rate; //할인률
	private BigDecimal discounted_price; //할인가
	private String category; // 분류
	private String release_date; // 출시일
	
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
	public Timestamp getDate_added() {
		return date_added;
	}
	public void setDate_added(Timestamp date_added) {
		this.date_added = date_added;
	}
	public String getTitle() {
		return title;
	}
	public String getThumbnail1() {
		return thumbnail1;
	}
	public int getTotal_likes() {
		return total_likes;
	}
	public int getLikes_1() {
		return likes_1;
	}
	public int getLikes_0() {
		return likes_0;
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
	public String getCategory() {
		return category;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setThumbnail1(String thumbnail1) {
		this.thumbnail1 = thumbnail1;
	}
	public void setTotal_likes(int total_likes) {
		this.total_likes = total_likes;
	}
	public void setLikes_1(int likes_1) {
		this.likes_1 = likes_1;
	}
	public void setLikes_0(int likes_0) {
		this.likes_0 = likes_0;
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
	public void setCategory(String category) {
		this.category = category;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	
}
