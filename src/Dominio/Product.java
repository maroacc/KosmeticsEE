package Dominio;

import java.io.Serializable;
import java.util.ArrayList;

public class Product implements Serializable {
    private int id;
    private String name;
    private String description;
    private String productCategory;
    private float price;
    private int offer;
    private int freeDeliver;
    private ArrayList<String> features = new ArrayList<String>();




    public Product() {
    }

    public Product(String name, String description, String productCategory, float price, int offer, int freeDeliver) {
        this.name = name;
        this.description = description;
        this.productCategory = productCategory;
        this.price = price;
        this.offer = offer;
        this.freeDeliver = freeDeliver;
    }

    public Product(int id, String name, String description, String productCategory, float price, int offer, int freeDeliver) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.productCategory = productCategory;
        this.price = price;
        this.offer = offer;
        this.freeDeliver = freeDeliver;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public String getProductCategory() {
        return this.productCategory;
    }

    public float getPrice() {
        return this.price;
    }

    public int getOffer() { return this.offer; }

    public int getFreeDelivery() {
        return freeDeliver;
    }

    public ArrayList<String> getFeatures() {
        return features;
    }

    public void setFeatures(ArrayList<String> features) {
        this.features = features;
    }

    @Override
    public String toString() {
        return "Product{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", productCategory='" + productCategory + '\'' +
                ", price=" + price +
                ", offer=" + offer +
                ", freeDeliver=" + freeDeliver +
                '}';
    }
    public float getNuevoPrecio(){
        float precio = this.getPrice();
        int oferta = this.getOffer();
        precio = precio * (100 - oferta)/100;
        return precio;
    }
}
