package com.ameen.main;

import java.util.Date;
import java.util.Random;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.ameen.modal.Address;
import com.ameen.modal.Employee;
import com.ameen.modal.User;

public class AppMain2 {/*

	static User userObj;
	static Session sessionObj;
	static SessionFactory sessionFactoryObj;

	private static SessionFactory buildSessionFactory() {
		// Creating Configuration Instance & Passing Hibernate Configuration
		// File
		Configuration configObj = new Configuration();
		configObj.configure("hibernate.cfg.xml");

		// Since Hibernate Version 4.x, ServiceRegistry Is Being Used
		ServiceRegistry serviceRegistryObj = new StandardServiceRegistryBuilder()
				.applySettings(configObj.getProperties()).build();

		// Creating Hibernate SessionFactory Instance
		sessionFactoryObj = configObj.buildSessionFactory(serviceRegistryObj);
		return sessionFactoryObj;
	}

	public static void main(String[] args) {
		System.out.println(".......Hibernate Maven Example.......\n");
		try {
			sessionObj = buildSessionFactory().openSession();
			sessionObj.beginTransaction();

			for (int i = 101; i <= 105; i++) {
				userObj = new User();
				//userObj.setUserid(i);
				userObj.setUsername("Editor " + i);
				userObj.setCreatedBy("Administrator");
				userObj.setCreatedDate(new Date());

				sessionObj.save(userObj);
			}

			// Committing The Transactions To The Database
			//sessionObj.getTransaction().commit();
			
			System.out.println("Going to save employee details");
			Employee emp;
			Address add;
			for (int j = 1001; j <= 1005; j++) {
				emp = new Employee();
				// userObj.setUserid(i);
				emp.setName("Employee " + j);
				emp.setEmail("Administrator");
				emp.setAddress("chennai");
				emp.setTelephone(String.valueOf(new Random().nextInt(9000000)));
				for (int k = 1; k <= 2; k++) {
					System.out.println("Address details of " + j);
					add = new Address();
					add.setCity(emp.getAddress()+j);
					add.setState(j % 2 == 0 ? "TamilNadu" : "KualaLampur");
					add.setCountry(j % 2 == 0 ? "india" : "malaysia");
					emp.getAdd().add(add);
					sessionObj.save(add);
				}
				sessionObj.save(emp);
				System.out.println("employee details saved");

			}
			sessionObj.getTransaction().commit();
			
			System.out.println("\n.......Records Saved Successfully To The Database.......\n");
			
			
		} catch (Exception sqlException) {
			sqlException.printStackTrace();
			if (null != sessionObj.getTransaction()) {
				System.out.println("\n.......Transaction Is Being Rolled Back.......");
				sessionObj.getTransaction().rollback();
			}
		} finally {
			if (sessionObj != null) {
				sessionObj.close();
			}
		}
	}

*/}
