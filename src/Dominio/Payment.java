package Dominio;

public class Payment {
    private String paymentType;
    private boolean automaticPayment;

    public Payment(){

    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public boolean isAutomaticPayment() {
        return automaticPayment;
    }

    public void setAutomaticPayment(boolean automaticPayment) {
        this.automaticPayment = automaticPayment;
    }
}
