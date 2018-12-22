package xyz.vaith.bean;
import java.util.HashMap;
import java.util.Map;

public class ShoppingCar {
    private Map<Integer, ShoppingCarItem> itemMap;
    private int amount;
    private float total;
    public void addGoods(Goods goods) {
        ShoppingCarItem shoppingCarItem = itemMap.get(goods.getId());
        if (shoppingCarItem == null) {
            shoppingCarItem = new ShoppingCarItem();
            shoppingCarItem.setGoods(goods);
            shoppingCarItem.setAmount(1);
        } else  {
            shoppingCarItem.setAmount(shoppingCarItem.getAmount()+1);
        }
        itemMap.put(goods.getId(), shoppingCarItem);
    }

    public void reduceGooods(int goodsId) {
        ShoppingCarItem item = itemMap.get(goodsId);
        if (item != null) {
            item.setAmount(item.getAmount() -1);
            if (item.getAmount()==0){
                itemMap.remove(goodsId);
            } else {
                itemMap.put(goodsId, item);
            }
        }
    }

    public void removeGoods(int goodsId) {
        itemMap.remove(goodsId);
    }

    public ShoppingCar() {
        itemMap = new HashMap<>();
    }

    public int getAmount() {
        int count = 0;
        for (Map.Entry entry : itemMap.entrySet()) {
            ShoppingCarItem shoppingCarItem = (ShoppingCarItem) entry.getValue();
            count = count + shoppingCarItem.getAmount();
        }
        return count;
    }

    public Map<Integer, ShoppingCarItem> getItemMap() {
        return itemMap;
    }

    public void setItemMap(Map<Integer, ShoppingCarItem> itemMap) {
        this.itemMap = itemMap;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public float getTotal() {
        float t = 0;
        for (Map.Entry entry : itemMap.entrySet()) {
            ShoppingCarItem shoppingCarItem = (ShoppingCarItem) entry.getValue();
            t = t + shoppingCarItem.getAmount() * shoppingCarItem.getGoods().getPrice();
        }
        return t;
    }
}
