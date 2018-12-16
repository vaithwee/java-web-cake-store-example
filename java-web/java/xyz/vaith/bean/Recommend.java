package xyz.vaith.bean;




public class Recommend {
    private int id;
    private RecommendType type;
    private Goods goods;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public RecommendType getType() {
        return type;
    }

    public void setType(RecommendType type) {
        this.type = type;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    @Override
    public String toString() {
        return "Recommend{" +
                "id=" + id +
                ", type=" + type +
                ", goods=" + goods +
                '}';
    }
}
