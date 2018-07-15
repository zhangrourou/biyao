// 购物车
$(function(){
    function loadPage(){
        $.ajax({
            type:"get",
            url:"data/user/islogin.php",
            dataType:"json",
            success:function(data){
                if(data.ok==0){
                    location.href="login.html?back="+location.href;
                }else{
                    $.ajax({
                        type:"get",
                        url:"data/cart/getCart.php",
                        dataType:"json",
                        success:function(items){
                            console.log(items);

                        }
                    })
                }
            }
        });
    }
    loadPage();




    // 绑定购物车数量单击事件
    $("#content-box-body").on("click","#add,#reduce",function() {
        console.log(123);
    });

})