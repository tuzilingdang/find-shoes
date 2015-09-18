package com.model;



/**
 * PrivilegeId entity. @author MyEclipse Persistence Tools
 */
public class PrivilegeId extends AbstractPrivilegeId implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public PrivilegeId() {
    }

    
    /** full constructor */
    public PrivilegeId(String userId, String rightstr, String defunct) {
        super(userId, rightstr, defunct);        
    }
   
}
