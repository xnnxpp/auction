package com.baizhi.dao;

import com.baizhi.entity.Auction;

import java.util.List;

public interface AuctionDao {

	
	public void insert(Auction auc);
	
	public void delete(int id);
	
	public void update(Auction auc);
	
	public Auction getOne(int id);
	
	public List<Auction> getAll(Auction auc);
	
	public void deleteByRe(int id);
}
