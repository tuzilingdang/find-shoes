package com.dao;

import com.model.Users;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 	* A data access object (DAO) providing persistence and search support for Users entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.model.Users
  * @author MyEclipse Persistence Tools 
 */

public class UsersDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(UsersDAO.class);
		//property constants
	public static final String PASSWORD = "password";
	public static final String NICK = "nick";
	public static final String TELEPHONE = "telephone";
	public static final String EMAIL = "email";
	public static final String ICON = "icon";
	public static final String BALANCE = "balance";
	public static final String IP = "ip";
	public static final String ADDRESS = "address";
	public static final String VIP = "vip";
	public static final String DEFUNCT = "defunct";



    
    public void save(Users transientInstance) {
        log.debug("saving Users instance");
        try {
        	Transaction tran = getSession().beginTransaction();
            getSession().save(transientInstance);
            tran.commit();
            getSession().close();
            log.debug("save successful");

        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Users persistentInstance) {
        log.debug("deleting Users instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Users findById( java.lang.String id) {
        log.debug("getting Users instance with id: " + id);
        try {
            Users instance = (Users) getSession()
                    .get("com.model.Users", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Users instance) {
        log.debug("finding Users instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.model.Users")
                    .add(Example.create(instance))
            .list();
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding Users instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Users as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByPassword(Object password
	) {
		return findByProperty(PASSWORD, password
		);
	}
	
	public List findByNick(Object nick
	) {
		return findByProperty(NICK, nick
		);
	}
	
	public List findByTelephone(Object telephone
	) {
		return findByProperty(TELEPHONE, telephone
		);
	}
	
	public List findByEmail(Object email
	) {
		return findByProperty(EMAIL, email
		);
	}
	
	public List findByIcon(Object icon
	) {
		return findByProperty(ICON, icon
		);
	}
	
	public List findByBalance(Object balance
	) {
		return findByProperty(BALANCE, balance
		);
	}
	
	public List findByIp(Object ip
	) {
		return findByProperty(IP, ip
		);
	}
	
	public List findByAddress(Object address
	) {
		return findByProperty(ADDRESS, address
		);
	}
	
	public List findByVip(Object vip
	) {
		return findByProperty(VIP, vip
		);
	}
	
	public List findByDefunct(Object defunct
	) {
		return findByProperty(DEFUNCT, defunct
		);
	}
	

	public List findAll() {
		log.debug("finding all Users instances");
		try {
			String queryString = "from Users";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Users merge(Users detachedInstance) {
        log.debug("merging Users instance");
        try {
            Users result = (Users) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Users instance) {
        log.debug("attaching dirty Users instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Users instance) {
        log.debug("attaching clean Users instance");
        try {
            getSession().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
	// 判断有没有这个user，存在返回true
	public boolean user_exist(String user_id) {
		if (user_id == null)
			return false;
		Users user = this.findById(user_id);
		if (user != null)
			return true;
		else
			return false;
	}
	
	
	// 获取ip（用于填写用户注册IP）
	public String getIp() {
		HttpServletRequest req = ServletActionContext.getRequest();
		return req.getRemoteAddr();
	}
}