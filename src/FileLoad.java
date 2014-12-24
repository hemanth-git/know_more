import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.control.UploadFileRead;

public class FileLoad extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	

	  @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	      
	        //process only if its multipart content
			String username = request.getParameter("examname");
			//System.out.print(username);
        	
	        if(ServletFileUpload.isMultipartContent(request)){
	            try 
	            {
	            
	            	List<FileItem> multiparts = new ServletFileUpload(
	                                         new DiskFileItemFactory()).parseRequest(request);
	                StringBuffer buf=new StringBuffer();
	                for(FileItem item : multiparts) 
	                {	
	                	if(item.isFormField())
	                	{
	                		if(item.getFieldName().equals("examname"))
	                		username=item.getString();
	                		//System.out.print(username);
	                	}
	                    buf.append(item.getString());
	                }
	           
	               //File uploaded successfully
	                String n=buf.toString();
	                //System.out.println(n);
	                UploadFileRead up=new UploadFileRead();
	                up.parseOne(n,username);
	                //System.out.println("Successcompleted..");
	               
	               request.getRequestDispatcher("retrieve.jsp").forward(request, response);
	               
	            }
	            catch (Exception ex) 
	            {
	               request.setAttribute("message", "File Upload Failed due to " + ex);
	            }          
	         
	        }
	        else
	        {
	            request.setAttribute("message",
	                                 "Sorry this Servlet only handles file upload request");
	        }	    
	    }
}
