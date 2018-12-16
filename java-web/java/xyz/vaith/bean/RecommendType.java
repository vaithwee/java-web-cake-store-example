package xyz.vaith.bean;

public enum RecommendType {
    Banner(1), Hot(2), New(3);
    RecommendType(int value) {
        this.value = value;
    }
    private int value;

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }
}