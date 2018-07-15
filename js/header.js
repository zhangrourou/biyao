(function(){
    //加载css样式
    $("#header").load("header.html",function(){
        var link=document.createElement("link");
        link.rel="stylesheet";
        link.href="css/header.css";
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

        var btnSearch=document.querySelector(
            "#top-input>[data-trigger=search]"
        );
        var txtSearch=document.getElementById("txtSearch");
        btnSearch.onclick=function(){
            if(txtSearch.value.trim()!=="")
                location.href=
                    "product.html?kw="+txtSearch.value.trim();
        }
        txtSearch.onkeyup=function(e){
            if(e.keyCode===13)
                btnSearch.onclick();
        }
        if(location.search.indexOf("kw=")!=-1){
            txtSearch.value=
                decodeURI(location.search.split("=")[1]);
        }
        //搜索栏
        var $txtSearch=$("#txtSearch"),
            $shelper=$("#shelper");
        $txtSearch.keyup(function(e){
            if(e.keyCode!=13){
                if(e.keyCode==40){//下点击
                    if(!$shelper.is(":has(.focus)")){
                        $shelper.children(":first").addClass("focus");
                    }else{
                        var $next=$shelper.children(".focus").removeClass("focus").next();
                        if($next.length>0)
                            $next.addClass("focus");
                        else
                            $shelper.children(":first").addClass("focus");
                    }
                }else if(e.keyCode==38){//上点击
                    if(!$shelper.is(":has(.focus)")){
                        $shelper.children(":first").addClass("focus");
                    }else{
                        var $prev=$shelper.children(".focus").removeClass("focus").prev();
                        if($prev.length>0)
                            $prev.addClass("focus");
                        else
                            $shelper.children(":last").addClass("focus");
                    }
                }else{
                    //显示搜索框的数据
                    if($txtSearch.val().trim()!==""){
                        $shelper.show();
                        $.ajax({
                            type:"get",
                            url:"data/product/shelper.php",
                            data:{kw:$txtSearch.val()},
                            dataType:"json",
                            success:function(data){
                                //console.log(123);
                                //console.log(data);
                                if(data.length>0){
                                    var html="";
                                    for(var item of data){
                                        var {title,sold_count}=item
                                        html+=`<li title="${title}">
											<div class="search-item" title="${title}">${title}</div>
											<i>销量:${sold_count}</i>
									 </li>`;
                                    }
                                    $shelper.html(html);
                                }else{
                                    $shelper.html(`<li title="未找到">
									<div class="search-item" title="未找到">未找到</div>	
								</li>`);
                                };
                            }
                        })
                    }
                }
            }
        }).blur(function(){
            $shelper.hide();
        }).focus(function(){
            $txtSearch.keyup();
        })
    })


})();