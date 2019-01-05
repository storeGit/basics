package com.ameen.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ameen.model.Employee;
import com.ameen.service.EmployeeService;

@Controller
public class EmployeeController {
 
    private static final Logger logger = Logger
            .getLogger(EmployeeController.class);
 
    public EmployeeController() {
        System.out.println("EmployeeController()");
    }
 
    @Autowired
    private EmployeeService employeeService;
 
    @RequestMapping(value = "/")
    public ModelAndView listEmployee(ModelAndView model) throws IOException {
        List<Employee> listEmployee = employeeService.getAllEmployees();
        model.addObject("listEmployee", listEmployee);
        ///model.setViewName("home");
        model.setViewName("login");
        System.out.println("in / method first");
        return model;
    }
    
    @RequestMapping(value = "/index")
    public ModelAndView listEmployeeAa(ModelAndView model) throws IOException {
        model.setViewName("sample");
        System.out.println("in /A method second");
        return model;
    }
 
    @RequestMapping(value = "/newEmployee", method = RequestMethod.GET)
    public ModelAndView newContact(ModelAndView model) {
        Employee employee = new Employee();
        model.addObject("employee", employee);
        model.setViewName("EmployeeForm");
        System.out.println("in /newEmployee method");
        return model;
    }
 
    @RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
    public ModelAndView saveEmployee(@ModelAttribute Employee employee) {
        if (employee.getId() == 0) { // if employee id is 0 then creating the
            // employee other updating the employee
            employeeService.addEmployee(employee);
        } else {
            employeeService.updateEmployee(employee);
        }
        System.out.println("in /saveEmployee method");
        return new ModelAndView("redirect:/");
    }
 
    @RequestMapping(value = "/deleteEmployee", method = RequestMethod.GET)
    public ModelAndView deleteEmployee(HttpServletRequest request) {
        int employeeId = Integer.parseInt(request.getParameter("id"));
        employeeService.deleteEmployee(employeeId);
        System.out.println("in /deleteEmployee method");
        return new ModelAndView("redirect:/");
    }
 
    @RequestMapping(value = "/editEmployee", method = RequestMethod.GET)
    public ModelAndView editContact(HttpServletRequest request) {
        int employeeId = Integer.parseInt(request.getParameter("id"));
        Employee employee = employeeService.getEmployee(employeeId);
        ModelAndView model = new ModelAndView("EmployeeForm");
        model.addObject("employee", employee);
        System.out.println("in /editEmployee method");
        return model;
    }
    
    //Newly added 121218
    @RequestMapping(value = "/allEmployee", method = RequestMethod.GET)
    public ModelAndView allEmployee(){
    	ModelAndView mv = null;
    	try {
    		 mv = new ModelAndView();
    		 mv.setViewName("about");
		} catch (Exception e) {
		}
    	return mv;
    }
    
    @RequestMapping(value="/allEmployees", method = RequestMethod.GET)
    public ModelAndView allEmployees(){
    	ModelAndView mv= null;
    	try {
			mv = new ModelAndView();
			//mv.setView(view);
		} catch (Exception e) {
			// TODO: handle exception
		}
    	return mv;
    }
 
}
