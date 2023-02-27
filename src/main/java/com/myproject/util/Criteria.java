package com.myproject.util;

public class Criteria {

	private int pageNum;
	private int amount;
	
	private String searchType;
	private String searchName;
	
	private String category;
	private String select_board;
	
	public Criteria() {
		// TODO Auto-generated constructor stub
		this(1, 10);
	}

	public Criteria(int pageNum, int amount) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public Criteria(int pageNum, int amount, String searchType,
			String searchName, String category, String select_board) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
		this.searchType = searchType;
		this.searchName = searchName;
		this.category = category;
		this.select_board = select_board;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchName() {
		return searchName;
	}

	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSelect_board() {
		return select_board;
	}

	public void setSelect_board(String select_board) {
		this.select_board = select_board;
	}

	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount
				+ ", searchType=" + searchType + ", searchName=" + searchName
				+ ", category=" + category + ", select_board=" + select_board
				+ "]";
	}
	
}
