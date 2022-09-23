package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.hibernate.Transaction;

import DTO.Teacher;
import DTO.feedback;
import DTO.student;

public class mainDao {

	public EntityManager creatEntityManager() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("rushi");
		EntityManager manager = factory.createEntityManager();
		return manager;
	}

	public int insertStudent(student s1) {

		EntityManager manager = creatEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		student s = manager.find(student.class, s1.getSid());
		if (s == null) {
			transaction.begin();
			manager.persist(s1);
			transaction.commit();
			return 1;
		} else {
			return 0;
		}
	}
	public int insertTeacher(Teacher t1) {

		EntityManager manager = creatEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		Teacher t = manager.find(Teacher.class, t1.getTid());
		if (t == null) {
			transaction.begin();
			manager.persist(t1);
			transaction.commit();
			return 1;
		} else {
			return 0;
		}
	}

	public int givFeedback(feedback f1) {

		EntityManager manager = creatEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		student s1=manager.find(student.class, f1.getSid());
		if(s1!=null) {
		transaction.begin();
		manager.persist(f1);
		transaction.commit();
		return 1;}
		else {
			return 0;
		}
	}
	public int studentLogIn(int sid,String pass) {
		EntityManager manager=creatEntityManager();
		student s1=manager.find(student.class, sid);
		if(s1!=null) {
			if(s1.getPass().equals(pass)) {
				return 1;
			}
			else {
				return 0;
			}
		}
		else {
			return -1;
		}
		
	}
	
	public int teacherLogIn(int sid,String pass) {
		EntityManager manager=creatEntityManager();
		Teacher s1=manager.find(Teacher.class, sid);
		if(s1!=null) {
			if(s1.getMail().equals(pass)) {
				return 1;
			}
			else {
				return 0;
			}
		}
		else {
			return -1;
		}
		
	}
	public List<feedback> getAll(){
		EntityManager manager=creatEntityManager();
		Query q1=manager.createQuery("select f from feedback f");
		List<feedback> list=q1.getResultList();
		return list;
	}
	public List<Teacher> getAllTeachers(){
		EntityManager manager=creatEntityManager();
		Query q1=manager.createQuery("select f from Teacher f");
		List<Teacher> list=q1.getResultList();
		return list;
	}

}
