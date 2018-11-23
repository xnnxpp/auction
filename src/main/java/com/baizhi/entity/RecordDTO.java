package com.baizhi.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class RecordDTO {
	
    private String name;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date time;
    private Double price;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "RecordDTO [name=" + name + ", time=" + time + ", price="
				+ price + "]";
	}
	public RecordDTO(String name, Date time, Double price) {
		super();
		this.name = name;
		this.time = time;
		this.price = price;
	}
	public RecordDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
    
}
