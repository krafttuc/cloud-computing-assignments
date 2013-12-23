package cn.edu.nju.software.dochub.controller;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nju.software.dochub.data.dataobject.Document;
import cn.edu.nju.software.dochub.data.dataobject.DocumentType;
import cn.edu.nju.software.dochub.service.DocumentService;
import cn.edu.nju.software.dochub.service.UserService;
import cn.edu.nju.software.dochub.web.ResponseBuilder;
import cn.edu.nju.software.dochub.web.UserAccessContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by tym on 13-12-19.
 */

@Controller
@RequestMapping("/document")
public class DocumentController {
	
	DocumentService documentService;
	ResponseBuilder responseBuilder;
	UserService userService;
    @RequestMapping(value = "/index.html")
    public String index(HttpServletRequest request,
                        HttpServletResponse response, ModelMap model) {
        return "home";
    }
    
    @RequestMapping(value = "createDocument.aj")
    public void createDocument(HttpServletRequest request,
                        HttpServletResponse response, ModelMap model) {
    	Document document =new Document();
    	document.setDocumentType(documentService.findDocTypeByName((String) request.getParameter("DocType")));
    	document.setTitle((String) request.getParameter("Title"));
    	document.setAuthor((String) request.getParameter("Author"));
    	document.setAbstract_((String) request.getParameter("Abstract"));
    	document.setKeywords((String) request.getParameter("Keyword"));
    	document.setPublisher((String) request.getParameter("Publisher"));
    	UserAccessContext uac=(UserAccessContext) request.getSession().getAttribute("userAccessContext");
    	document.setUser(userService.getUserById(uac.getUserId()));
    	System.out.println((String) request.getParameter("Abstract"));
    	documentService.addDocument(document);
    	responseBuilder.WriteJSONObject(response, new JSONObject(true));
    }

    @RequestMapping(value = "/show.html")
    public String show(HttpServletRequest request,
                       HttpServletResponse response, ModelMap model) {
        return "document/view";
    }

    @RequestMapping(value = "/edit.html")
    public String edit(HttpServletRequest request,
                       HttpServletResponse response, ModelMap model) {
        return "document/edit";
    }

    @RequestMapping(value = "/create.html")
    public String create(HttpServletRequest request,
                       HttpServletResponse response, ModelMap model) {
    	model.put("userAccessContext", (UserAccessContext)request.getSession().getAttribute("userAccessContext"));
    	model.put("documentTypeList", documentService.getAllDocumentType());
        return "document/create";
    }

	public void setDocumentService(DocumentService documentService) {
		this.documentService = documentService;
	}

	public void setResponseBuilder(ResponseBuilder responseBuilder) {
		this.responseBuilder = responseBuilder;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
