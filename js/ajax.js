/**
 ajax()用于支持所有情况下的ajax请求发送
 参数:
 type: 请求类型, get/post/delete/put
 url: 请求地址, "....php"
 data: 请求参数，要求必须是: 可以没有
 "参数名=值&参数名=值&..."
 dataType: 返回结果字符串的类型: json或不写
 success: 回调函数。
 在成功收到服务器响应后自动执行
 执行时，会自动传入服务端响应结果数据作为参数
 */

//创建一个回调函数
function ajax({type,url,data,dataType}){
    return new Promise(function(success){
        //异步请求
        //1.创建(ajax)异步对象
        var xhr=new XMLHttpRequest();//标准创建
        //2.监听事件:当xhr的readyState属性值发生改变时，要自动激发的操作
        xhr.onreadystatechange=function(){
            //接收数据响应成功：onreadyState==4 或 响应状态码：status==200
            if(xhr.readyState==4&&xhr.status==200){
                var result=xhr.responseText;//响应回来的数据是普通文本
                if(dataType==="json")
                    result=JSON.parse(result);
                success(result);
            }
        }
        //如果请求类型是get方法 或 数据！==不存在
        if(type==="get"&&data!==undefined)
            url+="?"+data;
        //3.打开连接
        // method:请求的方法（get/post）;url:请求地址
        //isAsyn:指定采用同步还是异步发送请求（true:异步，false:同步）
        xhr.open(type,url,true);
        //如果是post请求，还需要增加：设置请求头信息
        if(type==="post")
            xhr.setRequestHeader(
                "Content-Type",
                "application/x-www-form-urlencoded"
            );
        //4.发送请求
        if(type==="get"){
            xhr.send(null);
        }else if(data!==undefined){
            xhr.send(data);
        }
    });
}