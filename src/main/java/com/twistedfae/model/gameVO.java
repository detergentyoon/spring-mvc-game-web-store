package com.twistedfae.model;

import java.math.BigDecimal;

public class gameVO {

	private int game_id;
	private String title; // 게임 이름
	private String category; // 분류
	private String franchise; //프랜차이즈
	private String release_date; // 출시일
	private String developer; //개발자
	private String publisher; //배급사
	private BigDecimal original_price; //원가
	private BigDecimal discount_rate; //할인률
	private BigDecimal discounted_price; //할인가
	private String video; //비디오 url
	private String thumbnail1; // 사진 url
	private String thumbnail2; // 사진 url
	private String thumbnail3; // 사진 url
	private String thumbnail4; // 사진 url
	private String thumbnail5; // 사진 url
	private String introduction; // 게임 소개 글
	private String description; //게임 상세 글
	private int buycount; // 구매 수
	private int total_likes; // 총 추천 수
	private int likes_1; // 추천
	private int likes_0; // 비추천
	private String formattedOriginalPrice;
	private String formattedDiscountedPrice;
	
	public int getGame_id() {
		return game_id;
	}
	public String getTitle() {
		return title;
	}
	public String getCategory() {
		return category;
	}
	public String getFranchise() {
		return franchise;
	}
	public String getRelease_date() {
		return release_date;
	}
	public String getDeveloper() {
		return developer;
	}
	public String getPublisher() {
		return publisher;
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
	public String getVideo() {
		return video;
	}
	public String getThumbnail1() {
		return thumbnail1;
	}
	public String getThumbnail2() {
		return thumbnail2;
	}
	public String getThumbnail3() {
		return thumbnail3;
	}
	public String getThumbnail4() {
		return thumbnail4;
	}
	public String getThumbnail5() {
		return thumbnail5;
	}
	public String getIntroduction() {
		return introduction;
	}
	public String getDescription() {
		return description;
	}
	public int getBuycount() {
		return buycount;
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
	public void setGame_id(int game_id) {
		this.game_id = game_id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setFranchise(String franchise) {
		this.franchise = franchise;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	public void setDeveloper(String developer) {
		this.developer = developer;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
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
	public void setVideo(String video) {
		this.video = video;
	}
	public void setThumbnail1(String thumbnail1) {
		this.thumbnail1 = thumbnail1;
	}
	public void setThumbnail2(String thumbnail2) {
		this.thumbnail2 = thumbnail2;
	}
	public void setThumbnail3(String thumbnail3) {
		this.thumbnail3 = thumbnail3;
	}
	public void setThumbnail4(String thumbnail4) {
		this.thumbnail4 = thumbnail4;
	}
	public void setThumbnail5(String thumbnail5) {
		this.thumbnail5 = thumbnail5;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setBuycount(int buycount) {
		this.buycount = buycount;
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
	
	public String getFormattedOriginalPrice() {
		return formattedOriginalPrice;
	}
	public String getFormattedDiscountedPrice() {
		return formattedDiscountedPrice;
	}
	public void setFormattedOriginalPrice(String formattedOriginalPrice) {
		this.formattedOriginalPrice = formattedOriginalPrice;
	}
	public void setFormattedDiscountedPrice(String formattedDiscountedPrice) {
		this.formattedDiscountedPrice = formattedDiscountedPrice;
	}
	@Override
	public String toString() {
		return "gameVO [game_id=" + game_id + ", title=" + title + ", category=" + category + ", franchise=" + franchise
				+ ", release_date=" + release_date + ", developer=" + developer + ", publisher=" + publisher
				+ ", original_price=" + original_price + ", discount_rate=" + discount_rate + ", discounted_price="
				+ discounted_price + ", video=" + video + ", thumbnail1=" + thumbnail1 + ", thumbnail2=" + thumbnail2
				+ ", thumbnail3=" + thumbnail3 + ", thumbnail4=" + thumbnail4 + ", thumbnail5=" + thumbnail5
				+ ", introduction=" + introduction + ", description=" + description + "]";
	}
	
}
