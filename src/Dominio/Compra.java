package Dominio;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Compra {
    private Product product;
    private Date date;

    public Compra(Product product, String date) throws ParseException {
        this.product = product;
        this.setDate(date);
    }

    public Product getProduct() {
        return product;
    }

    public String date2string(){
        String og = date.toString().replace("00:00:00 CEST ", "");

        return og;
    }

    private void setDate(String date) throws ParseException {
        this.date = new SimpleDateFormat("yyyy-MM-dd").parse(String.valueOf(date));
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Compra{" +
                "product=" + product +
                ", date=" + date +
                '}';
    }
}