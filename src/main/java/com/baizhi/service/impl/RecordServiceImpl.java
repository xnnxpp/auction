package com.baizhi.service.impl;

import com.baizhi.dao.RecordDao;
import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;
import com.baizhi.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecordServiceImpl implements RecordService {
	
	@Autowired
	private RecordDao recordDao;
	@Override
	public void add(Record record) {
		recordDao.add(record);

	}

	@Override
	public List<RecordDTO> selectAll(int auction_id) {
		   List<RecordDTO> list = recordDao.selectAll(auction_id);
		  
		  return list;
	}

}
