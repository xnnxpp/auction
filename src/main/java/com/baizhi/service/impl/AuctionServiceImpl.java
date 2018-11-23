package com.baizhi.service.impl;

import com.baizhi.dao.AuctionDao;
import com.baizhi.entity.Auction;
import com.baizhi.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuctionServiceImpl implements AuctionService {
	@Autowired
	private AuctionDao auctionDao;
	@Override
	
	public void insert(Auction auc) {
		auctionDao.insert(auc);
	}

	@Override
	public void delete(int id) {
		auctionDao.delete(id);
	}

	@Override
	public void update(Auction auc) {
		auctionDao.update(auc);
	}

	@Override
	public Auction getOne(int id) {

		Auction one = auctionDao.getOne(id);
		return one;
	}

	@Override
	public List<Auction> getAll(Auction auc) {
		List<Auction> list = auctionDao.getAll(auc);
		return list;
	}

	@Override
	public void deleteByRe(int id) {
		auctionDao.deleteByRe(id);
	}

}
