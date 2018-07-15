//商品列表
// $(function(){
//     $.ajax({
//         type:"get",
//         url:"data/product/product.php",
//         dataType:"json"
//     }).then(function(products){
//         var html="";
//         products.forEach(function(p,i){
//                 var {title, pic, price, href} = p;
//                 html += `<li>
//                 <a href="${href}">
//                     <i><img src="${pic}" alt=""></i>
//                     <b>新品</b>
//                     <dl>
//                         <dt>${title}</dt>
//                         <dd>￥${parseFloat(price).toFixed(2)}</dd>
//                     </dl>
//                 </a>
//             </li>`;
//         })
//         document.querySelector(".category-cont>#f1").innerHTML=html;
//         document.querySelector(".category-cont>#f2").innerHTML=html;
//         document.querySelector(".category-cont>#f3").innerHTML=html;
//         document.querySelector(".category-cont>#f4").innerHTML=html;
//         document.querySelector(".category-cont>#f5").innerHTML=html;
//         document.querySelector(".category-cont>#f6").innerHTML=html;
//         document.querySelector(".category-cont>#f7").innerHTML=html;
//         document.querySelector(".category-cont>#f8").innerHTML=html;
//         document.querySelector(".category-cont>#f9").innerHTML=html;
//         document.querySelector(".category-cont>#f10").innerHTML=html;
//         document.querySelector(".category-cont>#f11").innerHTML=html;
//
//     })
// });

//商品列表
// $(function(){
//     $.ajax({
//         type:"get",
//         url:"data/product/product.php",
//         dataType:"json",
//     success:function(data){
//         var html1="";
//         var html2="";
//         var html3="";
//         var html4="";
//         var count="";
//
//         for(var i of data){
//             count++;
//             var {title, pic, price, href} = i;
//             if(count<21){
//                 html1+=`<li>
//                             <a href="${href}">
//                                 <i><img src="${pic}" alt=""></i>
//                                 <b>新品</b>
//                                 <dl>
//                                     <dt>${title}</dt>
//                                     <dd>￥${parseFloat(price).toFixed(2)}</dd>
//                                 </dl>
//                             </a>
//                         </li>`;
//             }else if(count<41){
//                 html2+=`<li>
//                 <a href="${href}">
//                     <i><img src="${pic}" alt=""></i>
//                     <b>新品</b>
//                     <dl>
//                         <dt>${title}</dt>
//                         <dd>￥${parseFloat(price).toFixed(2)}</dd>
//                     </dl>
//                 </a>
//                 </li>`;
//             }else if(count<54){
//                 html3 +=`<li>
//                 <a href="${href}">
//                     <i><img src="${pic}" alt=""></i>
//                     <b>新品</b>
//                     <dl>
//                         <dt>${title}</dt>
//                         <dd>￥${parseFloat(price).toFixed(2)}</dd>
//                     </dl>
//                 </a>
//                 </li>`;
//             }else if(count<100){
//                 html4 += `<li>
//                 <a href="${href}">
//                     <i><img src="${pic}" alt=""></i>
//                     <b>新品</b>
//                     <dl>
//                         <dt>${title}</dt>
//                         <dd>￥${parseFloat(price).toFixed(2)}</dd>
//                     </dl>
//                 </a>
//                 </li>`;
//             }
//         }
//
//         $(".category-cont>#f1").html(html1);
//         $(".category-cont>#f2").html(html2);
//         $(".category-cont>#f3").html(html3);
//         $(".category-cont>#f4").html(html4);
//
//         }
//     })
// });

$(function(){
/***功能模块：产品列表分页***/
    function loadProducts(pno,pageSize){
        // 1:发送ajax请求
        $.ajax({
            type:"GET",
            url:"data/product/product.php",
            data:{pno:pno,pageSize:pageSize},
            dataType:"JSON",
            success:function(result){//data == js.object{pno:1,pagrSize:8,data:datapageSize}
                //console.log(data);
                // console.log(data.pno);//当前页
                // console.log(data.pageSize);//页大小
                // console.log(data.pageCount);//页总数
                //console.log(data.data);
                // 1.创建字符串拼接当前页内容
                //商品列表——数据添加
                var html1="";
                var html2="";
                var html3="";
                var html4="";
                var count=0;
                for(var i of result.data){
                    count++;
                    var {title, pic, price, href} = i;
                    if(count<21){
                        html1+=`<li>
                                <a href="${href}">
                                    <i><img src="${pic}" alt=""></i>
                                    <b>新品</b>
                                    <dl>
                                        <dt>${title}</dt>
                                        <dd>￥${parseFloat(price).toFixed(2)}</dd>
                                    </dl>
                                </a>
                            </li>`;
                    }else if(count<41){
                        html2+=`<li>
                    <a href="${href}">
                        <i><img src="${pic}" alt=""></i>
                        <b>新品</b>
                        <dl>
                            <dt>${title}</dt>
                            <dd>￥${parseFloat(price).toFixed(2)}</dd>
                        </dl>
                    </a>
                    </li>`;
                    }else if(count<54){
                        html3 +=`<li>
                    <a href="${href}">
                        <i><img src="${pic}" alt=""></i>
                        <b>新品</b>
                        <dl>
                            <dt>${title}</dt>
                            <dd>￥${parseFloat(price).toFixed(2)}</dd>
                        </dl>
                    </a>
                    </li>`;
                    }else if(count<100){
                        html4 += `<li>
                    <a href="${href}">
                        <i><img src="${pic}" alt=""></i>
                        <b>新品</b>
                        <dl>
                            <dt>${title}</dt>
                            <dd>￥${parseFloat(price).toFixed(2)}</dd>
                        </dl>
                    </a>
                    </li>`;
                    }
                }

                $(".category-cont>#f1").html(html1);
                $(".category-cont>#f2").html(html2);
                $(".category-cont>#f3").html(html3);
                $(".category-cont>#f4").html(html4);

                // 2.创建字符串拼接分页页条[1][2][3][4]
                var pno = parseInt(result.pno);//当前页
                // console.log(pno);
                var pageCount = parseInt(result.pageCount);//总页数
                var html = "";
                html+=`<li><a href="javascript:;" class="first">首页</a></li>
                        <li><a href="javascript:;" class="previous">上一页</a></li>`;
                //上上一页
                if(pno-2>0){
                    html+=`<li><a href="javascript:;" class="page-num">${pno-2}</a></li>`;
                }
                //上一页
                if(pno-1>0){
                    html+=`<li><a href="javascript:;" class="page-num">${pno-1}</a></li>`;
                }
                //当前页
                html+=`<li class="active"><a href="javascript:;" class="page-num">${pno}</a></li>`;
                //下一页
                if(pno+1<=pageCount){
                    html+=`<li><a href="javascript:;" class="page-num">${pno+1}</a></li>`;
                }
                //下下页
                if(pno+2<=pageCount){
                    html+=`<li><a href="javascript:;" class="page-num">${pno+2}</a></li>`;
                }
                html+=`<li><a href="javascript:;" class="next">下一页</a></li>
                    <li><a href="javascript:;" class="last-page">尾页</a></li>`;

                $("#pagination").html(html);

                if(pno===1){
                    $("#pagination>li>a:lt(2)").addClass("disabled");
                }
                if(pno===pageCount){
                    $("#pagination>li>a:eq(-1),#pagination>a:eq(-2)").addClass("disabled");
                }

                //首页
                $(".first").click(function(e){
                    // console.log(321);
                    e.preventDefault();
                    loadProducts(1,20);
                })
                //上一页
                $(".previous").click(function(e){
                    e.preventDefault();
                    loadProducts(pno-1,20);
                })
                //下一页
                $(".next").click(function(e){
                    e.preventDefault();
                    if(pno<pageCount){
                        loadProducts(pno+1,20);
                    }
                })
                //尾页
                $(".last-page").click(function(e){
                    e.preventDefault();
                    loadProducts(pageCount,20);
                })
            },
            error:function(){
                //php语法错误，sql语法错，json语法错，404
                alert("网络故障请检查！");
            }
        })
    }
    loadProducts(1,20);

/***功能模块：分页面页码添加点击事件***/

//获取所有页码元素，并绑定事件
    $("#pagination").on("click",".page-num", function(e){
        e.preventDefault();
        // 2.获取当前页码
        var pno = parseInt($(this).html());
        // 3.调用分页函数
        loadProducts(pno,20);
    });
});


