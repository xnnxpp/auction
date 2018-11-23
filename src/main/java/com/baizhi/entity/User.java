package com.baizhi.entity;

/**
 * 用户管理表
 * @author 96933
 *
 */
public class User {
	
	private int id;
	private String name;
	private String password;
	private String card_no;
	private String tel;
	private String address;
	private String post_number;
	private int id_admin;
	private String question;
	private String answer;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCard_no() {
		return card_no;
	}
	public void setCard_no(String card_no) {
		this.card_no = card_no;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPost_number() {
		return post_number;
	}
	public void setPost_number(String post_number) {
		this.post_number = post_number;
	}
	public int getId_admin() {
		return id_admin;
	}
	public void setId_admin(int id_admin) {
		this.id_admin = id_admin;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password
				+ ", card_no=" + card_no + ", tel=" + tel + ", address="
				+ address + ", post_number=" + post_number + ", id_admin="
				+ id_admin + ", question=" + question + ", answer=" + answer
				+ "]";
	}
	public User(String name, String password, String card_no, String tel,
			String address, String post_number, int id_admin, String question,
			String answer) {
		super();
		this.name = name;
		this.password = password;
		this.card_no = card_no;
		this.tel = tel;
		this.address = address;
		this.post_number = post_number;
		this.id_admin = id_admin;
		this.question = question;
		this.answer = answer;
	}
	public User(int id, String name, String password, String card_no,
			String tel, String address, String post_number, int id_admin,
			String question, String answer) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.card_no = card_no;
		this.tel = tel;
		this.address = address;
		this.post_number = post_number;
		this.id_admin = id_admin;
		this.question = question;
		this.answer = answer;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
