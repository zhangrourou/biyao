(function(){
    //加载css样式
    $("#header").load("cart-header.html",function(){
        var link=document.createElement("link");
        link.rel="stylesheet";
        link.href="css/cart-header.css";
        document.head.appendChild(link);

    //判断是否登录功能
    $.ajax({
        type:"get",
        url:"data/user/islogin.php",
        dataType:"json",
        success:function(data){
            if(data.ok==0){
                $(".loginList").show().next().hide();
            }else{
                var {uname}=data;
                $(".loginList").hide().next().show().find("#uname").html(uname);
            }
        }
    });

    //登录
    $("#loginBtn").click(function(e){
            e.preventDefault();
            location.href="login.html?back="+location.href;
        });
    // //注册
        // $("#registBtn").click(function(e){
        //         e.preventDefault();
        //         location.href="regist.html?back="+location.href;
        //     })

    //注销登录
    $("#btnSignout").click(function(e){
        e.preventDefault();
        $.ajax({
            type:"get",
            url:"data/user/signout.php",
            success:function(){
                location.reload(true);
            }
        })
    })


    })


})();