package com.baizhi.dao;

import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;

import java.util.List;

public interface RecordDao {
	public List<RecordDTO> selectAll(int auction_id);
	public void add(Record record); 
}
