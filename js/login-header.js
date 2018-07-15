(function(){
    $("#header").load("login-header.html",function(){
        var link=document.createElement("link");
        link.rel="stylesheet";
        link.href="css/login-header.css";
        document.head.appendChild(link);
    })
})();