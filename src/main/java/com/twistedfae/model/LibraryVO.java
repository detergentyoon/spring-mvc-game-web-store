package com.twistedfae.model;

public class LibraryVO {

	private String user_id;
	private int game_id;
	
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
	
	@Override
	public String toString() {
		return "LibraryVO [user_id=" + user_id + ", game_id=" + game_id + "]";
	}
	
}
