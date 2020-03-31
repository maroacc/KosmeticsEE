package Dominio;

public class BrandContact {
    private String contactName;
    private String telephone;

    public BrandContact(){

    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getContactDirection() {
        return contactDirection;
    }

    public void setContactDirection(String contactDirection) {
        this.contactDirection = contactDirection;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    private String contactDirection;
    private String contactEmail;

}

