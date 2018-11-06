package cn.model;

import java.util.ArrayList;
import java.util.List;

public class StudentDao {
	private static List<Student> list=new ArrayList<Student>();
	
	public void save(Student student) {
		list.add(student);
	}
	
	public List<Student> getAll(){
		return list;
	}
	
	public Student get(String id) {
		for(Student stu:list) {
			if(stu.getId().equals(id)) {
				return stu;
			}	
		}
		return null;
	}
	
	public void update(Student student) {
		
	}
	
	public void delete(String id) {
		for(Student stu:list) {
			if(stu.getId().equals(id)) {
				list.remove(stu);
				break;
			}	
		}
	}

}
