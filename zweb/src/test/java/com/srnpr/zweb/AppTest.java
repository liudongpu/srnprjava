package com.srnpr.zweb;

import java.io.File;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import com.srnpr.zcom.common.ComFunction;

import freemarker.cache.FileTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

/**
 * Unit test for simple App.
 */
public class AppTest 
    extends TestCase
{
    /**
     * Create the test case
     *
     * @param testName name of the test case
     */
    public AppTest( String testName )
    {
        super( testName );
    }

    /**
     * @return the suite of tests being tested
     */
    public static Test suite()
    {
        return new TestSuite( AppTest.class );
    }

    /**
     * Rigourous Test :-)
     */
    public void testApp()
    {
    	Configuration configuration = new Configuration(); 
    	PathMatchingResourcePatternResolver patternResolver = new PathMatchingResourcePatternResolver();  
    	
    	File file = null;
    	
		try {
    	Resource[] resources = patternResolver.getResources("classpath*:com/srnpr/*/zsrnpr/webtemplete/*.ftl");
    	
		
    	if(resources.length>0)
    	{
    		file=resources[0].getFile();
    	}
    	
    	
    	FileTemplateLoader fTemplateLoader=new FileTemplateLoader(file.getParentFile());
    	
    	
    	
	         //configuration.setServletContextForTemplateLoading(getServletContext(), "WEB-INF/pages"); 
	         //configuration.setEncoding(Locale.CHINA, "UTF-8"); 
	        // configuration.setDirectoryForTemplateLoading(file);
	        // Template template = configuration.getTemplate("hello.html"); 
    	  configuration.setEncoding(Locale.CHINA, "UTF-8"); 
    		configuration.setTemplateLoader(fTemplateLoader);
    		Template template=configuration.getTemplate("basepage.ftl");
    
    	
    		HashMap<String, String> map = new HashMap<String, String>(); 
            map.put("userName", "xx    ");    
	         
	         StringWriter sWriter=new StringWriter();
	        // Writer out = ; 
	         try{ 
	          
				template.process(map, sWriter); 
	         }catch (TemplateException e) { 
	             e.printStackTrace(); 
	         } 
	         
	       
	         System.out.println(sWriter.toString());
	         
	         
		}
		catch(Exception ex)
		{
			ComFunction.OutLog(ex.getMessage());
		}
         
    	
        assertTrue( true );
    }
}
