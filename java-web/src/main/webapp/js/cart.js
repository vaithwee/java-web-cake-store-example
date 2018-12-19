
/**
 * 加入购物车
 */
function buy(goodsId){
	$.post("shoppingCar/add", {goodsId:goodsId}, function(data){

	});
}
/**
 * 购物车减去
 */
function lessen(goodsId){
	$.post("shoppingCar/reduce", {goodsId:goodsId}, function(data){

	});
}
/**
 * 购物车删除
 */
function deletes(goodsId){
	$.post("shoppingCar/remove", {goodsId:goodsId}, function(data){

	});
}