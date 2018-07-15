(function(){
    //加载css样式
    $("#header").load("product-header.html",function(){
        var link=document.createElement("link");
        link.rel="stylesheet";
        link.href="css/header.css";
        document.head.appendChild(link);

    //登录和注册
    $("#loginBtn").click(function(e){
            e.preventDefault();
            location.href="login.html?back="+location.href;
        });
    $("#registBtn").click(function(e){
            e.preventDefault();
            location.href="regist.html?back="+location.href;
        })
    })
})();