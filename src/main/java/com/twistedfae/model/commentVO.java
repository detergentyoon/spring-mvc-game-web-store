package com.twistedfae.model;

import java.sql.Timestamp;

public class commentVO {

	private int comment_id;
	private int game_id;
	private String user_id;
	private String name;
	private String profile_image;
	private Timestamp posted_date;
	private String content;
	private int likes;
	private int total_likes;
	private int likes_1;
	private int likes_0;
	private int rating_id;
	private Integer types;
	
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public int getGame_id() {
		return game_id;
	}
	public void setGame_id(int game_id) {
		this.game_id = game_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProfile_image() {
		return profile_image;
	}
	public void setProfile_image(String profile_image) {
		this.profile_image = profile_image;
	}
	public Timestamp getPosted_date() {
		return posted_date;
	}
	public void setPosted_date(Timestamp posted_date) {
		this.posted_date = posted_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getTotal_likes() {
		return total_likes;
	}
	public void setTotal_likes(int total_likes) {
		this.total_likes = total_likes;
	}
	public int getLikes_1() {
		return likes_1;
	}
	public void setLikes_1(int likes_1) {
		this.likes_1 = likes_1;
	}
	public int getLikes_0() {
		return likes_0;
	}
	public void setLikes_0(int likes_0) {
		this.likes_0 = likes_0;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public int getRating_id() {
		return rating_id;
	}
	public void setRating_id(int rating_id) {
		this.rating_id = rating_id;
	}
	
	public int getTypes() {
		return types;
	}
	public void setTypes(Integer types) {
		this.types = types;
	}
	@Override
	public String toString() {
		return "commentVO [comment_id=" + comment_id + ", game_id=" + game_id + ", user_id=" + user_id + ", name="
				+ name + ", profile_image=" + profile_image + ", posted_date=" + posted_date + ", content=" + content
				+ ", likes=" + likes + ", total_likes=" + total_likes + ", likes_1=" + likes_1 + ", likes_0=" + likes_0
				+ ", rating_id=" + rating_id + ", types=" + types + "]";
	}

	
}
