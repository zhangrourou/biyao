// // 登录功能
// $(function(){
//     $(".account-main>.pwd-login>.account-btn").click(function(){
//         //alert("123");
//         var uname = $("#uname").val();
//         var upwd = $("#upwd").val();
//         $.ajax({
//             type:"post",
//             url:"data/user/login.php",
//             data:{uname,upwd},
//             success:function(msg){
//                 alert(msg);
//                 //如果登录成功，就返回...
//                 if(msg==="登录成功!"){
//                     location.href = "./index.html";
//                    //?back=http://xxx/products.html?ke=i5
//                    //  var i=location.search.indexOf("=");
//
//                 }
//             }
//         })
//     })
// })

// 功能：完成后台管理员登录
//http://127.0.0.1/13-html5/admin/index.html

// 1:获取登录按钮btn
// 2:为按钮绑定点击事件
// 3:组织事件默认行为
$(".account-main>.pwd-login>.account-btn").click(function(e){
    e.preventDefault();
    // console.log(111)
// 4:获取用户输入值_用户名_密码_验证码
    var uname = $("#uname").val();
    var upwd = $("#upwd").val();
// 5:创建正则表达式验证用户输入_用户名_密码_验证码
// 6:如果验证出错显示错误信息
    var reg=/^[a-z0-9]{3,12}$/i;
    if(!reg.test(uname)){
        alert("用户名不正确");
        return;
    }
    if(!reg.test(upwd)){
        alert("密码不正确");
        return;
    }
// console.log(2);
// console.log(uname+"_"+upwd);
// 7:发送ajax_data/user/login.php
// 8:获取返回结果
//  code>0 登录成功跳转_index.html页面
// 9:获取返回结果错误_提示错误信息
    $.ajax({
        type:"get",
        url:"data/user/login.php",
        data:{uname:uname,upwd:upwd},
        success:function(data){
            //     console.log(data);
            // },
            // error:function(){
            //     alert("网络故障，请检查！");
            if(data.code>0){
                alert(data.msg);
                location.href = "./index.html";
            }else{
                alert(data.msg);
            }
        },
        error:function() {
            alert("网络故障，请检查！");
        }
    });
});


