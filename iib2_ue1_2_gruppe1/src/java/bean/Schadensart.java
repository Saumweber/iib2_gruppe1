package bean;
// Generated 15.05.2016 11:05:36 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Schadensart generated by hbm2java
 */
public class Schadensart  implements java.io.Serializable {


     private Integer sdaId;
     private String sdaName;
     private Set schadens = new HashSet(0);

    public Schadensart() {
    }

    public Schadensart(String sdaName, Set schadens) {
       this.sdaName = sdaName;
       this.schadens = schadens;
    }
   
    public Integer getSdaId() {
        return this.sdaId;
    }
    
    public void setSdaId(Integer sdaId) {
        this.sdaId = sdaId;
    }
    public String getSdaName() {
        return this.sdaName;
    }
    
    public void setSdaName(String sdaName) {
        this.sdaName = sdaName;
    }
    public Set getSchadens() {
        return this.schadens;
    }
    
    public void setSchadens(Set schadens) {
        this.schadens = schadens;
    }




}

