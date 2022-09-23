package DTO;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class student {
	@Id
	private int sid;
	private String pass;
	private String name;
	private String dname;
	private String yearOfStudy;
	
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getYearOfStudy() {
		return yearOfStudy;
	}
	public void setYearOfStudy(String yearOfStudy) {
		this.yearOfStudy = yearOfStudy;
	}	
}
