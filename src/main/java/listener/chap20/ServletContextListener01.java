package listener.chap20;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener01
 *
 */
//@WebListener
public class ServletContextListener01 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener01() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	System.out.println("우리 어플리케이션 종료됨 !!!");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	
    	System.out.println("우리 어플리케이션 초기화됨 !!!");
    }
	
}
