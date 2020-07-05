package domain;

/**
 * 风景实体类
 */
public class View {
    private int id;
    private String name;
    private String image;
    private String introduce;
    private double price;
    private String address;

    @Override
    public String toString() {
        return "View{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                ", introduce='" + introduce + '\'' +
                ", price=" + price +
                ", address='" + address + '\'' +
                '}';
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getImage() {
        return image;
    }

    public String getIntroduce() {
        return introduce;
    }

    public double getPrice() {
        return price;
    }

    public String getAddress() {
        return address;
    }
}
