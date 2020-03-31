package Dominio;

public class Brand {
    private String name;
    private String username;
    private String email;
    private String password;
    private String webAddress;
    private String description;
    private String logo; //Probablemente no sea string
    private Company company;
    private BrandContact brandContact;
    private Payment payment;

    public Brand(String name, String username,String password, String userEmail, String webAddress, String contactEmail, String description, String fiscalAddress, String CIF, String tipoPago, Boolean pagoAutomatico, String companyName, String contactPerson, String contactDirection){
        this.setName(name);
        this.setUsername(username);
        this.setPassword(password);
        this.setEmail(userEmail);
        this.setWebAddress(webAddress);
        this.getBrandContact().setContactEmail(contactEmail);
        this.setDescription(description);
        this.getBrandContact().setContactName(contactPerson);
        this.getCompany().setFiscalAddress(fiscalAddress);
        this.getCompany().setCIF(CIF);
        this.getCompany().setCompanyName(companyName);
        this.getBrandContact().setContactDirection(contactDirection);
        this.getPayment().setPaymentType(tipoPago);
        this.getPayment().setAutomaticPayment(pagoAutomatico);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getWebAddress() {
        return webAddress;
    }

    public void setWebAddress(String webAddress) {
        this.webAddress = webAddress;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public BrandContact getBrandContact() {
        return brandContact;
    }

    public void setBrandContact(BrandContact brandContact) {
        this.brandContact = brandContact;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }

}
