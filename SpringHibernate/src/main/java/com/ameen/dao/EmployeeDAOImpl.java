package com.ameen.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ameen.model.Address;
import com.ameen.model.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
 
    @Autowired
    private SessionFactory sessionFactory;
 
    public void addEmployee(Employee employee) {
    	Address a1 = new Address();
    	a1.setState("TamilNadu");
    	a1.setCountry("india");
    	a1.setCity(employee.getAddress());
    	employee.getAdd().add(a1);
    	sessionFactory.getCurrentSession().saveOrUpdate(a1);
        sessionFactory.getCurrentSession().saveOrUpdate(employee);
 
    }
 
    @SuppressWarnings("unchecked")
    public List<Employee> getAllEmployees() {
 
        return sessionFactory.getCurrentSession().createQuery("from Employee")
                .list();
    }
 
    //@Override
    public void deleteEmployee(Integer employeeId) {
        Employee employee = (Employee) sessionFactory.getCurrentSession().load(
                Employee.class, employeeId);
        if (null != employee) {
            this.sessionFactory.getCurrentSession().delete(employee);
        }
 
    }
 
    public Employee getEmployee(int empid) {
        return (Employee) sessionFactory.getCurrentSession().get(
                Employee.class, empid);
    }
 
    //@Override
    public Employee updateEmployee(Employee employee) {
        sessionFactory.getCurrentSession().update(employee);
        return employee;
    }
 
}
