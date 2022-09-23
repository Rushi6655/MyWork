package DTO;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class feedback {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int fno;
	private int sid;
	private int tid;
	private String dname;
	private int year;
	private int sem;
	private String subject;
	private int Qa;
	private int Qb;
	private int Qc;
	private int Qd;
	private int Qe;
	private int Qf;
	private int Qg;
	private int Qh;
	
	
	public int getSem() {
		return sem;
	}
	public void setSem(int sem) {
		this.sem = sem;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getQa() {
		return Qa;
	}
	public void setQa(int qa) {
		Qa = qa;
	}
	public int getQb() {
		return Qb;
	}
	public void setQb(int qb) {
		Qb = qb;
	}
	public int getQc() {
		return Qc;
	}
	public void setQc(int qc) {
		Qc = qc;
	}
	public int getQd() {
		return Qd;
	}
	public void setQd(int qd) {
		Qd = qd;
	}
	public int getQe() {
		return Qe;
	}
	public void setQe(int qe) {
		Qe = qe;
	}
	public int getQf() {
		return Qf;
	}
	public void setQf(int qf) {
		Qf = qf;
	}
	public int getQg() {
		return Qg;
	}
	public void setQg(int qg) {
		Qg = qg;
	}
	public int getQh() {
		return Qh;
	}
	public void setQh(int qh) {
		Qh = qh;
	}
	
	
}
