package Dominio;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

public class Product implements Serializable {
    private int id;
    private String name;
    private Brand brand  = new Brand();
    private String description;
    private String productCategory;
    private double price;
    private int offer;
    private boolean freeDeliver;
    private ArrayList<String> features = new ArrayList<String>();
    private Survey survey;
    private ArrayList<Review> reviews = new ArrayList<Review>();
    private int nReviews;
    private int resto;
    private int score;
    private float scoreFloat;
    private HashMap<Integer,Integer> parcialScores = new HashMap<Integer,Integer>();
    private int totalScores;


    public Product(){

    };

    public Product(String name, int score, int resto, int nReviews){
        this.setName(name);
        this.setScore(score);
        this.setResto(resto);
        this.setnReviews(nReviews);

    }

    public Product(int id, String name, String brand, String productCategory, double ogPrice, int offer,
                   String description, boolean freeDeliver){

        this.id = id;
        this.setName(name);
        this.setPrice(ogPrice);
        this.getBrand().setName(brand);
        this.setDescription(description);
        this.setProductCategory(productCategory);
        this.offer = offer;
        this.freeDeliver = freeDeliver;
    }

    public Product(String name, String description, String productCategory, float price, int offer, boolean freeDeliver) {
        this.name = name;
        this.description = description;
        this.productCategory = productCategory;
        this.price = price;
        this.offer = offer;
        this.freeDeliver = freeDeliver;
    }

    public Product(int id, String name, String description, String productCategory, float price, int offer, boolean freeDeliver) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.productCategory = productCategory;
        this.price = price;
        this.offer = offer;
        this.freeDeliver = freeDeliver;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setOffer(int offer) {
        this.offer = offer;
    }

    public void setFreeDeliver(boolean freeDeliver) {
        this.freeDeliver = freeDeliver;
    }

    public void setReviews(ArrayList<Review> reviews) {
        this.reviews = reviews;
    }

    public void setResto(int resto) {
        this.resto = resto;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public void setScoreFloat(float scoreFloat) {
        this.scoreFloat = scoreFloat;
    }

    public int getnReviews() {
        return nReviews;
    }

    public void setnReviews(int nReviews) {
        this.nReviews = nReviews;
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

    public double getPrice() {
        return this.price;
    }

    public int getOffer() { return this.offer; }

    public boolean getFreeDelivery() {
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
    public double getNuevoPrecio(){
        double precio = this.getPrice();
        int oferta = this.getOffer();
        precio = precio * (100 - oferta)/100;
        return precio;
    }

    public void setSurvey(Survey survey){
        this.survey=survey;
    }

    public Survey getSurvey() {
        return survey;
    }

    //Tanto reviews como features se rellenan una a una
    public void addReview(Review review){
        reviews.add(review);
    }

    public void setResto() {
        this.resto = 5-score;
    }

    public int getResto() {
        return resto;
    }

    public void setScore(float fullscore) {
        scoreFloat = fullscore;
        score = Math.round(fullscore);
    }
    public int getScore() {
        return score;
    }
    public float getScoreFloat() {
        return scoreFloat;
    }

    public void addFeature(String feature){
        features.add(feature);
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public ArrayList<Review> getReviews() {
        return reviews;
    }
    public HashMap<Integer, Integer> getParcialScores(){
        int i,valor;
        for(i=1;i<=5;i++){
            parcialScores.put(i,0);
        }
        totalScores = reviews.size();
        for(i=0; i<reviews.size();i++){
            valor = reviews.get(i).getProductScore();
            parcialScores.put(valor,parcialScores.get(valor)+1);
        }
        for(i=1; i<=5;i++){
            parcialScores.put(i,Math.round(((float)parcialScores.get(i)/totalScores)*100));
        }
        return parcialScores;
    }
    public int getParcialScoresResto(int i){
        return (100 -i);
    }
}
