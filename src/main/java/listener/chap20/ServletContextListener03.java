package listener.chap20;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener03
 *
 */
//@WebListener
public class ServletContextListener03 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener03() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	ServletContext application = sce.getServletContext();
    	
    	String param1 = application.getInitParameter("init-param1");
    	String param2 = application.getInitParameter("init-param2");
    	
    	System.out.println(param1);
    	System.out.println(param2);
    	
    }
	
}
