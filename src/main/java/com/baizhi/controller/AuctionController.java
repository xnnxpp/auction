package com.baizhi.controller;

import com.baizhi.entity.Auction;
import com.baizhi.entity.Record;
import com.baizhi.entity.RecordDTO;
import com.baizhi.entity.User;
import com.baizhi.service.AuctionService;
import com.baizhi.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class AuctionController {
	@Autowired
	private AuctionService auctionService;

	@Autowired
	private RecordService recordService;

	@RequestMapping("/getAll")
	public String getAll(Auction auc, Map map) {
//		System.out.println(auc + "**********************");
		List<Auction> Aulist = auctionService.getAll(auc);
		map.put("Aulist", Aulist);
		return "auction";
	}

	@RequestMapping("/insert")
	public String insert(Auction auc, MultipartFile picture,
			HttpServletRequest request) throws IllegalStateException,
			IOException {
		// ��ȡ�ϴ��������ļ���
		String fileName = picture.getOriginalFilename();

		// ������
		fileName = new Date().getTime() + "_" + fileName;

		// ��ȡ·��
		String realPath = request.getRealPath("upload");

		// �ѽ��յ����ļ���ת��Ϊ�����ļ�
		picture.transferTo(new File(realPath + "\\" + fileName));
		auc.setPic(fileName);
//		System.out.println(auc + "***************************");
		auctionService.insert(auc);
		return "redirect:/getAll.do";
	}

	@RequestMapping("/delete")
	public String delete(int id) {
		auctionService.deleteByRe(id);
		auctionService.delete(id);
		return "forward:/getAll.do";
	}

	@RequestMapping("/getOne")
	public String getOne(int id, Map map) {

		Auction one = auctionService.getOne(id);
		map.put("Aulist", one);
		return "update";
	}

	@RequestMapping("/update")
	public String update(Auction auc, MultipartFile picture,
			HttpServletRequest request) throws IllegalStateException,
			IOException {
		if (!"".equals(picture.getOriginalFilename())) {

			// ��ȡ�ϴ��������ļ���
			String fileName = picture.getOriginalFilename();
			// ������
			fileName = new Date().getTime() + "_" + fileName;
			// ��ȡ·��
			String realPath = request.getRealPath("upload");
			// �ѽ��յ����ļ���ת��Ϊ�����ļ�
			picture.transferTo(new File(realPath + "\\" + fileName));
			auc.setPic(fileName);
		}

		auctionService.update(auc);
		System.out.println(auc + "&&&&&&&******************");

		return "redirect:/getAll.do";
	}

	@RequestMapping("/getRecord")
	public String getAll(int auction_id, Map map) {
		List<RecordDTO> Rlist = recordService.selectAll(auction_id);
		Auction one = auctionService.getOne(auction_id);
		map.put("Alist", one);
		map.put("Rlist", Rlist);
//		for (RecordDTO recordDTO : Rlist) {
//			System.out.println(recordDTO);
//		}
		return "jingpai";
	}
	@RequestMapping("/addRecord")
	public String add(int auction_id,Record record,HttpSession session){
		User user =(User) session.getAttribute("user");
		
		record.setUser_id(user.getId());
		
		record.setAuction_id(auction_id);
		recordService.add(record);
//		System.out.println("%%%%%%%%%%%%%%%%%%%%"+record+"))))))))))))))))))))))))))");
		
		return "forward:/getRecord.do?auction_id"+auction_id;
	}
}
