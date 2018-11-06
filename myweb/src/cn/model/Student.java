package cn.model;

import java.util.Arrays;

public class Student {
	private String id;
	private String name;
	private String sex;
	private String professional;
	private String[] hobby;
	private String self;
	private String photo;	
	public Student() {
		super();
	}

	public Student(String id, String name, String sex, String professional, String[] hobby, String self, String photo) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.professional = professional;
		this.hobby = hobby;
		this.self = self;
		this.photo = photo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getProfessional() {
		return professional;
	}

	public void setProfessional(String professional) {
		this.professional = professional;
	}

	public String[] getHobby() {
		return hobby;
	}

	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}

	public String getSelf() {
		return self;
	}

	public void setSelf(String self) {
		this.self = self;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", sex=" + sex + ", professional=" + professional + ", hobby="
				+ Arrays.toString(hobby) + ", self=" + self + ", photo=" + photo + "]";
	}
	
	
	
	
}
