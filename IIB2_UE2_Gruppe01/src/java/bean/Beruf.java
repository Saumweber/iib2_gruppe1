package bean;
// Generated 20.06.2016 00:49:55 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Beruf generated by hbm2java
 */
public class Beruf  implements java.io.Serializable {


     private Integer brfId;
     private String brfBerufname;
     private String brfSpezialisierung;
     private Set nutzers = new HashSet(0);

    public Beruf() {
    }

    public Beruf(String brfBerufname, String brfSpezialisierung, Set nutzers) {
       this.brfBerufname = brfBerufname;
       this.brfSpezialisierung = brfSpezialisierung;
       this.nutzers = nutzers;
    }
   
    public Integer getBrfId() {
        return this.brfId;
    }
    
    public void setBrfId(Integer brfId) {
        this.brfId = brfId;
    }
    public String getBrfBerufname() {
        return this.brfBerufname;
    }
    
    public void setBrfBerufname(String brfBerufname) {
        this.brfBerufname = brfBerufname;
    }
    public String getBrfSpezialisierung() {
        return this.brfSpezialisierung;
    }
    
    public void setBrfSpezialisierung(String brfSpezialisierung) {
        this.brfSpezialisierung = brfSpezialisierung;
    }
    public Set getNutzers() {
        return this.nutzers;
    }
    
    public void setNutzers(Set nutzers) {
        this.nutzers = nutzers;
    }




}


