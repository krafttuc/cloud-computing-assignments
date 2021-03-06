package cn.edu.nju.software.dochub.data.dao;

import cn.edu.nju.software.dochub.data.dataobject.DocumentType;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

/**
 * A data access object (DAO) providing persistence and search support for
 * DocumentType entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 *
 * @author MyEclipse Persistence Tools
 * @see cn.edu.nju.software.dochub.data.dataobject.DocumentType
 */

public class DocumentTypeDAO extends HibernateDaoSupport {
    private static final Logger log = LoggerFactory
            .getLogger(DocumentTypeDAO.class);
    // property constants
    public static final String TYPE_NAME = "typeName";

    protected void initDao() {
        // do nothing
    }

    public void save(DocumentType transientInstance) {
        log.debug("saving DocumentType instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }

    public void delete(DocumentType persistentInstance) {
        log.debug("deleting DocumentType instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }

    public DocumentType findById(java.lang.Integer id) {
        log.debug("getting DocumentType instance with id: " + id);
        try {
            DocumentType instance = (DocumentType) getHibernateTemplate().get(
                    "cn.edu.nju.software.dochub.data.dataobject.DocumentType",
                    id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }

    public List<DocumentType> findByExample(DocumentType instance) {
        log.debug("finding DocumentType instance by example");
        try {
            List<DocumentType> results = (List<DocumentType>) getHibernateTemplate()
                    .findByExample(instance);
            log.debug("find by example successful, result size: "
                    + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }

    public List findByProperty(String propertyName, Object value) {
        log.debug("finding DocumentType instance with property: "
                + propertyName + ", value: " + value);
        try {
            String queryString = "from DocumentType as model where model."
                    + propertyName + "= ?";
            return getHibernateTemplate().find(queryString, value);
        } catch (RuntimeException re) {
            log.error("find by property name failed", re);
            throw re;
        }
    }

    public List<DocumentType> findByTypeName(Object typeName) {
        return findByProperty(TYPE_NAME, typeName);
    }

    public List findAll() {
        log.debug("finding all DocumentType instances");
        try {
            String queryString = "from DocumentType";
            return getHibernateTemplate().find(queryString);
        } catch (RuntimeException re) {
            log.error("find all failed", re);
            throw re;
        }
    }

    public DocumentType merge(DocumentType detachedInstance) {
        log.debug("merging DocumentType instance");
        try {
            DocumentType result = (DocumentType) getHibernateTemplate().merge(
                    detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(DocumentType instance) {
        log.debug("attaching dirty DocumentType instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public void attachClean(DocumentType instance) {
        log.debug("attaching clean DocumentType instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public static DocumentTypeDAO getFromApplicationContext(
            ApplicationContext ctx) {
        return (DocumentTypeDAO) ctx.getBean("DocumentTypeDAO");
    }
}