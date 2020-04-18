package Dominio;

public class Product {
    private String name;
    private String description;
    private String productCategory;
    private float price;
    private int offer;
    private int freeDeliver;

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

    public int getOffer() {
        return this.offer;
    }

    public int getFreeDelivery() {
        return freeDeliver;
    }
}
