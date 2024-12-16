package models;

public class RoomType {
    private int id;
    private String label;
    private int capacity;
    private int price;

    // Getters et Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getLabel() { return label; }
    public void setLabel(String label) { this.label = label; }

    public int getCapacity() { return capacity; }
    public void setCapacity(int capacity) { this.capacity = capacity; }

    public int getPrice() { return price; }
    public void setPrice(int price) { this.price = price; }
}
