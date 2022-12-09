package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.FileItem;

public class UploadDatasetController  extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String UPLOAD_DIRECTORY=getServletContext().getRealPath("/dataset/");
	
	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//process only if its multipart content
        if(ServletFileUpload.isMultipartContent(req)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                                         new DiskFileItemFactory()).parseRequest(req);
               
                for(FileItem item : multiparts){
                	
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        System.out.println("name of the file"+name);
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                    }
                }
            
               //File uploaded successfully
               req.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
               req.setAttribute("message", "File Upload Failed due to " + ex);
            }          
          
        }else{
            req.setAttribute("message",
                                 "Sorry this Servlet only handles file upload request");
        }
     
        req.getRequestDispatcher("/result.jsp").forward(req, resp);
      
    }
		
		
	}
	
	


