package com.baizhi.service;

import com.baizhi.entity.Auction;

import java.util.List;

public interface AuctionService {

    public void insert(Auction auc);

    public void delete(int id);

    public void update(Auction auc);

    public Auction getOne(int id);

    public List<Auction> getAll(Auction auc);

    public void deleteByRe(int id);
}
