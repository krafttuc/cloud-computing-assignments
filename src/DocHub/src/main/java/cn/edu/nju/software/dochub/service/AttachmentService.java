package cn.edu.nju.software.dochub.service;

import java.util.List;

import cn.edu.nju.software.dochub.data.dao.AttachmentDAO;
import cn.edu.nju.software.dochub.data.dao.CommentDAO;
import cn.edu.nju.software.dochub.data.dao.CommentPropertyDAO;
import cn.edu.nju.software.dochub.data.dao.CommentPropertyTypeDAO;
import cn.edu.nju.software.dochub.data.dao.DocumentDAO;
import cn.edu.nju.software.dochub.data.dao.DocumentHasDocumentPropertyDAO;
import cn.edu.nju.software.dochub.data.dao.DocumentPropertyDAO;
import cn.edu.nju.software.dochub.data.dao.DocumentPropertyTypeDAO;
import cn.edu.nju.software.dochub.data.dao.DocumentTypeDAO;
import cn.edu.nju.software.dochub.data.dao.DocumentTypeHasDocumentPropertyTypeDAO;
import cn.edu.nju.software.dochub.data.dao.ReferenceDAO;
import cn.edu.nju.software.dochub.data.dao.ReferenceTypeDAO;
import cn.edu.nju.software.dochub.data.dao.TagDAO;
import cn.edu.nju.software.dochub.data.dao.TaggingDAO;
import cn.edu.nju.software.dochub.data.dao.UserDAO;
import cn.edu.nju.software.dochub.data.dao.UserLogDAO;
import cn.edu.nju.software.dochub.data.dataobject.Attachment;

public class AttachmentService {
	DocumentTypeDAO documentTypeDAO;
	CommentPropertyDAO commentPropertyDAO;
	AttachmentDAO attachmentDAO;
	CommentDAO commentDAO;
	DocumentTypeHasDocumentPropertyTypeDAO documentTypeHasDocumentPropertyTypeDAO;
	UserLogDAO userLogDAO;
	DocumentPropertyTypeDAO documentPropertyTypeDAO;
	UserDAO userDAO;
	TagDAO tagDAO;
	ReferenceDAO referenceDAO;
	ReferenceTypeDAO referenceTypeDAO;
	DocumentDAO documentDAO;
	CommentPropertyTypeDAO commentPropertyTypeDAO;
	TaggingDAO taggingDAO;
	DocumentHasDocumentPropertyDAO documentHasDocumentPropertyDAO;
	DocumentPropertyDAO documentPropertyDAO;
	
	public void addAttachment(Attachment attachment){
		attachmentDAO.save(attachment);
	}
	
	public Attachment findAttachmentByDocumentIdAndAttachmentName(int docid,String attachmentname){
		List<Attachment> attachmentList=attachmentDAO.findAttachmentByDocumentIdAndAttachmentName(docid,attachmentname);
		if(attachmentList.size()>0){
			return attachmentList.get(0);
		}
		
		return null;
	}
	
	public void updateAttachment(Attachment attachment){
		attachmentDAO.merge(attachment);
	}
	
	public Attachment findAttachmentById(int attid){
		return attachmentDAO.findById(attid);
	}
	
	public void deleteAttachmentById(int attid){
		attachmentDAO.delete(attachmentDAO.findById(attid));
	}
	
	
	
	
	
	
	
	
	public void setDocumentTypeDAO(DocumentTypeDAO documentTypeDAO) {
		this.documentTypeDAO = documentTypeDAO;
	}
	public void setCommentPropertyDAO(CommentPropertyDAO commentPropertyDAO) {
		this.commentPropertyDAO = commentPropertyDAO;
	}
	public void setAttachmentDAO(AttachmentDAO attachmentDAO) {
		this.attachmentDAO = attachmentDAO;
	}
	public void setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
	}
	public void setDocumentTypeHasDocumentPropertyTypeDAO(
			DocumentTypeHasDocumentPropertyTypeDAO documentTypeHasDocumentPropertyTypeDAO) {
		this.documentTypeHasDocumentPropertyTypeDAO = documentTypeHasDocumentPropertyTypeDAO;
	}
	public void setUserLogDAO(UserLogDAO userLogDAO) {
		this.userLogDAO = userLogDAO;
	}
	public void setDocumentPropertyTypeDAO(
			DocumentPropertyTypeDAO documentPropertyTypeDAO) {
		this.documentPropertyTypeDAO = documentPropertyTypeDAO;
	}
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	public void setTagDAO(TagDAO tagDAO) {
		this.tagDAO = tagDAO;
	}
	public void setReferenceDAO(ReferenceDAO referenceDAO) {
		this.referenceDAO = referenceDAO;
	}
	public void setReferenceTypeDAO(ReferenceTypeDAO referenceTypeDAO) {
		this.referenceTypeDAO = referenceTypeDAO;
	}
	public void setDocumentDAO(DocumentDAO documentDAO) {
		this.documentDAO = documentDAO;
	}
	public void setCommentPropertyTypeDAO(
			CommentPropertyTypeDAO commentPropertyTypeDAO) {
		this.commentPropertyTypeDAO = commentPropertyTypeDAO;
	}
	public void setTaggingDAO(TaggingDAO taggingDAO) {
		this.taggingDAO = taggingDAO;
	}
	public void setDocumentHasDocumentPropertyDAO(
			DocumentHasDocumentPropertyDAO documentHasDocumentPropertyDAO) {
		this.documentHasDocumentPropertyDAO = documentHasDocumentPropertyDAO;
	}
	public void setDocumentPropertyDAO(DocumentPropertyDAO documentPropertyDAO) {
		this.documentPropertyDAO = documentPropertyDAO;
	}
}
