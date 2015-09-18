package com.model;



/**
 * AbstractPrivilege entity provides the base persistence definition of the Privilege entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractPrivilege  implements java.io.Serializable {


    // Fields    

     private PrivilegeId id;


    // Constructors

    /** default constructor */
    public AbstractPrivilege() {
    }

    
    /** full constructor */
    public AbstractPrivilege(PrivilegeId id) {
        this.id = id;
    }

   
    // Property accessors

    public PrivilegeId getId() {
        return this.id;
    }
    
    public void setId(PrivilegeId id) {
        this.id = id;
    }
   








}