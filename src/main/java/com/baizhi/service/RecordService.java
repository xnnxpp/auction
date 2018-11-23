package com.baizhi.service;

import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;

import java.util.List;

public interface RecordService {
	public void add(Record record); 
	public List<RecordDTO> selectAll(int auction_id);
}
