package Dominio;

public class Brand {
    private String name;
    private String username;
    private String userEmail;
    private String password;
    private String webAddress;
    private String description;
    private String logo; //Probablemente no sea string
    private Company company = new Company();
    private Contact contact = new Contact();
    private Payment payment = new Payment();

    public Brand(){

    }
    public Brand(String userEmail, String username, String password){
        this.setUserEmail(userEmail);
        this.setUsername(username);
        this.setPassword(password);
    }

    public Brand(String name, String username,String password, String userEmail, String webAddress, String contactEmail, String description, String fiscalAddress, String CIF, String tipoPago, Boolean pagoAutomatico, String companyName, String contactPerson, String contactDirection){
        this(userEmail, username, password);
        this.setName(name);
        this.setWebAddress(webAddress);
        this.getContact().setEmail(contactEmail);
        this.getContact().getEmail();
        this.setDescription(description);
        this.getContact().setName(contactPerson);
        this.getCompany().setFiscalAddress(fiscalAddress);
        this.getCompany().setCIF(CIF);
        this.getCompany().setName(companyName);
        this.getContact().setAddress(contactDirection);
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

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
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

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }

}
