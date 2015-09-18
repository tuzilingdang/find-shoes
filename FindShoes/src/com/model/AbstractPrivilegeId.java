package com.model;



/**
 * AbstractPrivilegeId entity provides the base persistence definition of the PrivilegeId entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractPrivilegeId  implements java.io.Serializable {


    // Fields    

     private String userId;
     private String rightstr;
     private String defunct;


    // Constructors

    /** default constructor */
    public AbstractPrivilegeId() {
    }

    
    /** full constructor */
    public AbstractPrivilegeId(String userId, String rightstr, String defunct) {
        this.userId = userId;
        this.rightstr = rightstr;
        this.defunct = defunct;
    }

   
    // Property accessors

    public String getUserId() {
        return this.userId;
    }
    
    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getRightstr() {
        return this.rightstr;
    }
    
    public void setRightstr(String rightstr) {
        this.rightstr = rightstr;
    }

    public String getDefunct() {
        return this.defunct;
    }
    
    public void setDefunct(String defunct) {
        this.defunct = defunct;
    }
   



   @Override
public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof AbstractPrivilegeId) ) return false;
		 AbstractPrivilegeId castOther = ( AbstractPrivilegeId ) other; 
         
		 return ( (this.getUserId()==castOther.getUserId()) || ( this.getUserId()!=null && castOther.getUserId()!=null && this.getUserId().equals(castOther.getUserId()) ) )
 && ( (this.getRightstr()==castOther.getRightstr()) || ( this.getRightstr()!=null && castOther.getRightstr()!=null && this.getRightstr().equals(castOther.getRightstr()) ) )
 && ( (this.getDefunct()==castOther.getDefunct()) || ( this.getDefunct()!=null && castOther.getDefunct()!=null && this.getDefunct().equals(castOther.getDefunct()) ) );
   }
   
   @Override
public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getUserId() == null ? 0 : this.getUserId().hashCode() );
         result = 37 * result + ( getRightstr() == null ? 0 : this.getRightstr().hashCode() );
         result = 37 * result + ( getDefunct() == null ? 0 : this.getDefunct().hashCode() );
         return result;
   }   





}