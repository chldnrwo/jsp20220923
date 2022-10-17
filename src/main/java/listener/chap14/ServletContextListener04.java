package listener.chap14;

import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener04
 *
 */
@WebListener
public class ServletContextListener04 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener04() {
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
    	
    	// 1. JDBC 드라이버 로딩
    			try {
    				Class.forName("org.mariadb.jdbc.Driver");
    			} catch (Exception e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			}
    	
         ServletContext application = sce.getServletContext();
         
         String propFile = "/WEB-INF/props/jdbc.properties";
         
         
		try(InputStream is = application.getResourceAsStream(propFile);) {
			 Properties props = new Properties();
	         props.load(is);
	         
	         application.setAttribute("jdbc.url", props.getProperty("jdbc.url"));
	         application.setAttribute("jdbc.username", props.getProperty("jdbc.user"));
	         application.setAttribute("jdbc.password", props.getProperty("jdbc.password"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         
        
    }
	
}
