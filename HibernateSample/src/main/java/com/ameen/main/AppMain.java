package com.ameen.main;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.ameen.modal.Address;
import com.ameen.modal.Employee;

public class AppMain {

	static Session sessionObj;
	static SessionFactory sessionFactoryObj;

	public static void main(String[] args) {
		Employee emp = null;
		Address add = null;
		try {
			sessionObj = buildSessionFactory().openSession();
			sessionObj.beginTransaction();

			add = new Address();
			emp = new Employee();
			emp.setEmp_name("Ameen");
			add.setEmp_city("address_chennai");
			add.setEmp(emp);

			sessionObj.save(add);
			//sessionObj.save(emp);
			sessionObj.getTransaction().commit();
			System.out.println("\n.......Records Saved Successfully To The Database.......\n");

		} catch (Exception sqlException) {
			sqlException.printStackTrace();
		} finally {
			if (sessionObj != null) {
				sessionObj.close();
			}
		}
	}

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

}
