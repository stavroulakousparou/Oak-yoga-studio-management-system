/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.oak_yoga_studio.aop;



import com.oak_yoga_studio.domain.Customer;
import com.oak_yoga_studio.service.INotificationService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;

/**
 *
 * @author Weldino
 */
@Aspect
public class EmailAdvice {
    
    private INotificationService notificationService;

    public void setNotificationService(INotificationService notificationService) {
        this.notificationService = notificationService;
    }
    
    
 /**
     * Send an email every time the user signed up
     * @param jp 
     */

    @AfterReturning(pointcut = "execution(* com.oak_yoga_studio.service.impl.CustomerServiceImpl.addCustomer(..))")
    public void signupEmailNotification(JoinPoint jp) {
        Customer c=(Customer) jp.getArgs()[0];
        
        System.out.println("Eamil Notification--------------------------/////-----");
        String text = "Welcome to Oak Yoga Studio.You have successfully registered.You can register for a course and purchase products online.";
        
        notificationService.notifyCustomer(c, text);
    }   
    
}
