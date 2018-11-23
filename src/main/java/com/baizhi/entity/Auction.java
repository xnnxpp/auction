package com.baizhi.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 *
 * ����Ʒ��Ϣ��
* @author 96933
*
*/
public class Auction {
   private int id;
   private String name;
   private Double start_price;
   private Double upset;
   @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
   @JSONField(format = "yyyy-MM-dd HH:mm:ss")
   private Date start_time;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
   private Date end_time;
   private String pic;
   private String desc;
   private int is_admin;
   public Auction() {
       super();
       // TODO Auto-generated constructor stub
   }
   public Auction(String name, Double start_price, Double upset,
           Date start_time, Date end_time, String pic, String desc) {
       super();
       this.name = name;
       this.start_price = start_price;
       this.upset = upset;
       this.start_time = start_time;
       this.end_time = end_time;
       this.pic = pic;
       this.desc = desc;
   }
   public Auction(int id, String name, Double start_price, Double upset,
           Date start_time, Date end_time, String pic, String desc) {
       super();
       this.id = id;
       this.name = name;
       this.start_price = start_price;
       this.upset = upset;
       this.start_time = start_time;
       this.end_time = end_time;
       this.pic = pic;
       this.desc = desc;
   }
   public int getId() {
       return id;
   }
   public void setId(int id) {
       this.id = id;
   }
   public String getName() {
       return name;
   }
   public void setName(String name) {
       this.name = name;
   }
   public Double getStart_price() {
       return start_price;
   }
   public void setStart_price(Double start_price) {
       this.start_price = start_price;
   }
   public Double getUpset() {
       return upset;
   }
   public void setUpset(Double upset) {
       this.upset = upset;
   }
   public Date getStart_time() {
       return start_time;
   }
   public void setStart_time(Date start_time) {
       this.start_time = start_time;
   }
   public Date getEnd_time() {
       return end_time;
   }
   public void setEnd_time(Date end_time) {
       this.end_time = end_time;
   }
   public String getPic() {
       return pic;
   }
   public void setPic(String pic) {
       this.pic = pic;
   }
   public String getDesc() {
       return desc;
   }
   public void setDesc(String desc) {
       this.desc = desc;
   }
   @Override
   public String toString() {
       return "Auction [id=" + id + ", name=" + name + ", start_price="
               + start_price + ", upset=" + upset + ", start_time="
               + start_time + ", end_time=" + end_time + ", pic=" + pic
               + ", desc=" + desc + "]";
   }
   public int getIs_admin() {
       return is_admin;
   }
   public void setIs_admin(int is_admin) {
       this.is_admin = is_admin;
   }


}
