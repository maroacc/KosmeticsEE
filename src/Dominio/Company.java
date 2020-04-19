package Dominio;

public class Company {
    private String fiscalAddress;
    private String CIF;
    private String name;

    public String getFiscalAddress() {
        return fiscalAddress;
    }

    public void setFiscalAddress(String fiscalAddress) {
        this.fiscalAddress = fiscalAddress;
    }

    public String getCIF() {
        return CIF;
    }

    public void setCIF(String CIF) {
        this.CIF = CIF;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Company{" +
                "fiscalAddress='" + fiscalAddress + '\'' +
                ", CIF='" + CIF + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
