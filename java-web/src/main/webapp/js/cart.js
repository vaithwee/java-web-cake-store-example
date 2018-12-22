
/**
 * 加入购物车
 */
function buy(goodsId){
	$.post("shoppingCar/add", {goodsId:goodsId}, function(data){

		if (data=="ok") {
			layer.msg("添加到购物车成功!", {time:800}, function(){
				location.reload();
			});
		} else  {
            layer.msg("添加到购物车失败!", {time:800}, function(){

            });
		}
	});
}
/**
 * 购物车减去
 */
function lessen(goodsId){
	$.post("shoppingCar/reduce", {goodsId:goodsId}, function(data){
        if (data=="ok") {
            layer.msg("操作成功!", {time:800}, function(){
                location.reload();
            });
        } else  {
            layer.msg("添加到购物车失败!", {time:800}, function(){

            });
        }
	});
}
/**
 * 购物车删除
 */
function deletes(goodsId){
	$.post("shoppingCar/remove", {goodsId:goodsId}, function(data){
        if (data=="ok") {
            layer.msg("操作成功!", {time:800}, function(){
                location.reload();
            });
        } else  {
            layer.msg("添加到购物车失败!", {time:800}, function(){

            });
        }
	});
}