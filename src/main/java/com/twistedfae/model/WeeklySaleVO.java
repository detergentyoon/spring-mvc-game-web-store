package com.twistedfae.model;

public class WeeklySaleVO {
    private String title;
    private int original_price;
    private int discount_rate;
    private int discounted_price;

    // constructor
    public WeeklySaleVO() { }
    
    public WeeklySaleVO(String title, int original_price, int discount_rate, int discounted_price) {
    	super();
    	this.title = title;
    	this.original_price = original_price;
    	this.discount_rate = discount_rate;
    	this.discounted_price = discounted_price;
    }
    
    // getters & setters
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getOriginal_price() {
		return original_price;
	}

	public void setOriginal_price(int original_price) {
		this.original_price = original_price;
	}

	public int getDiscount_rate() {
		return discount_rate;
	}

	public void setDiscount_rate(int discount_rate) {
		this.discount_rate = discount_rate;
	}

	public int getDiscounted_price() {
		return discounted_price;
	}

	public void setDiscounted_price(int discounted_price) {
		this.discounted_price = discounted_price;
	}
}
