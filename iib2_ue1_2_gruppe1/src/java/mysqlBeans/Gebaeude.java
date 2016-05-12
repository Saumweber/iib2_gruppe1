package mysqlBeans;
// Generated 12.05.2016 22:04:38 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Gebaeude generated by hbm2java
 */
public class Gebaeude  implements java.io.Serializable {


     private Integer gbdId;
     private Adresse adresse;
     private Eigentuemer eigentuemer;
     private String gbdName;
     private Set schadenslages = new HashSet(0);

    public Gebaeude() {
    }

	
    public Gebaeude(Adresse adresse, Eigentuemer eigentuemer) {
        this.adresse = adresse;
        this.eigentuemer = eigentuemer;
    }
    public Gebaeude(Adresse adresse, Eigentuemer eigentuemer, String gbdName, Set schadenslages) {
       this.adresse = adresse;
       this.eigentuemer = eigentuemer;
       this.gbdName = gbdName;
       this.schadenslages = schadenslages;
    }
   
    public Integer getGbdId() {
        return this.gbdId;
    }
    
    public void setGbdId(Integer gbdId) {
        this.gbdId = gbdId;
    }
    public Adresse getAdresse() {
        return this.adresse;
    }
    
    public void setAdresse(Adresse adresse) {
        this.adresse = adresse;
    }
    public Eigentuemer getEigentuemer() {
        return this.eigentuemer;
    }
    
    public void setEigentuemer(Eigentuemer eigentuemer) {
        this.eigentuemer = eigentuemer;
    }
    public String getGbdName() {
        return this.gbdName;
    }
    
    public void setGbdName(String gbdName) {
        this.gbdName = gbdName;
    }
    public Set getSchadenslages() {
        return this.schadenslages;
    }
    
    public void setSchadenslages(Set schadenslages) {
        this.schadenslages = schadenslages;
    }




}


