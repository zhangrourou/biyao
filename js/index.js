/*************轮播图************/
$(function(){
    var $bannerSlider=$(".banner-slider");//父元素
    var $ul = $(".banner-img"); //轮播图
    var $olIds=$(".banner-item");//原点

    var LIWIDTH=1080,interval=500,wait=3000,moved=0,timer=null;
    //获取数据库的数据
    $.ajax({
        type:"get",
        url:"data/index/getCarousel.php",
        dataType:"json",
        success:function(data){
            //console.log(data);
            //html拼接
            var html = "";
            //轮播图片循环
            for(var c of data){
                //解构
                var{img,href,title}=c;
                //html拼接
                html+=`<li>
					<a href="${href}" title="${title}">
						<img src="${img}">
					</a>
				</li>`;
            }
            //console.log(html);
            //给四张图后加一张图
            var {img,href,title}=data[0];
            html+=`<li>
                <a href="${href}" title="${title}">
                    <img src="${img}">
                </a>
            </li>`;
            $ul.html(html).css("width",LIWIDTH*(data.length+1));
            //原点动效
            $olIds.html("<li></li>".repeat(data.length)).children(":first").addClass("hover");
            autoMove();
        }
    });

    /***自动轮播***/
    function autoMove(){
        //定时器轮播图动效
        timer=setInterval(function(){
            move();
        },wait);
    }

    /***动画移动效果事件***/
    function move(){
        moved++;
        $ul.animate({
            left:-moved*LIWIDTH
        },interval,function(){//最后一张图片的设置
            if(moved==$ul.children().length-1){
                $ul.css("left",0);
                moved=0;
            }
            //圆点
            $olIds.children(":eq("+moved+")").addClass("hover")
                .siblings().removeClass("hover");
        })
    }

    /*************图片暂停设置***********/
    //图片暂停设置
    $(".banner-slider").mouseenter(function(){//鼠标移入：暂停
        clearInterval(timer);
        timer=null;
    }).mouseleave(function(){//鼠标移出
        autoMove();//调用定时器
    });

    /*************小圆点设置***********/
    //圆点暂停单击设置
    $olIds.mouseenter(function(){//鼠标移入：暂停
        clearInterval(timer);
        timer=null;
    }).mouseleave(function(){//鼠标移出
        autoMove();//调用定时器
    });
    //圆点绑定事件
    $olIds.on("click","li",function(){
        var $li=$(this);
        var i=$li.index();
        moved=i;
        $ul.stop(true).animate({
            left:-moved*LIWIDTH
        },interval,function(){
            $olIds.children(":eq("+moved+")").addClass("hover")
                .siblings().removeClass("hover");
        })
    });

    /**********左右箭头设置**********/
    var $sliderLeft=$(".slider-left"),
        $sliderRight=$(".slider-right");
    //右边箭头
    $sliderRight.click(function(){
        if(!$ul.is(":animated")){//如果动画不叠加
            move();
        }
    });
    //左边箭头
    $sliderLeft.click(function(){
        if(!$ul.is(":animated")){
            if(moved==0){
                moved=$ul.children().length-1;
                $ul.css("left",-moved*LIWIDTH);
            }
            moved--;
            $ul.animate({
                left:-moved*LIWIDTH
            },interval,function(){
                $olIds.children(":eq("+moved+")").addClass("hover")
                    .siblings().removeClass("hover");
            })
        }
    });

    //左右箭头显示和隐藏
    $bannerSlider.mouseenter(function(){//鼠标移入：显示
       $(".banner-slider>a").show();
    }).mouseleave(function(){//鼠标移出
        $(".banner-slider>a").hide();
    });
});

/*************手风琴轮播图************/
$(function(){
    /*********初始设置**************/
    //获取节点对象
    var imgOuter = $('.recommend-2');//所有图片所处的容器
    var imgDiv = $('.pic');//各图片所在的div容器
    //设置部分初始值与计算
    var timeId = null;          //记录如片轮换的定时器，自动轮换与鼠标控制切换时用到
    var edgeDistance = 94;      //记录相邻图片错开的距离
    var imgNow = 0;             //记录当前显示的第几张图片，此处为默认值0
    var imgMouse = 0;           //记录鼠标停留在第几张图片上
    //记录所有图片最外层容器的宽度，计算即将显示第一张图片时的，其他图片移动的距离
    var imgOuterWidth = imgOuter.width();

    /**********方法*************/
    /*图片自动轮换的方法主体*/
    function autoSlide(){
        //计算第几张图片开始运动
        if(imgNow == imgDiv.size()-1){
            imgNow = 0;
        }else{
            imgNow ++;
        }
        //显示第一张图片和显示后面图片的移动方式不同
        if(imgNow == 0){//显示第一张图片
            //图片运动
            for(var i=imgDiv.size()-1;i>0;i--){
                //图片透明度设置
                $(".pic>a").css("background","rgba(0,0,0,0.3)");
                imgDiv.eq(i).animate({
                    'left':imgOuterWidth-(imgDiv.size()-i)*edgeDistance+'px'
                },2000);
                //图片透明度设置
                imgDiv.eq(imgNow).children().eq(1).css("background","rgba(0,0,0,0)");
            }
        }else{//显示第一张之外的任意图片
            //图片运动
            imgDiv.eq(imgNow).animate({'left':edgeDistance*imgNow+'px'},500);
            //图片透明度设置
            $(".pic>a").css("background","rgba(0,0,0,0.3)");
            imgDiv.eq(imgNow).children().eq(1).css("background","rgba(0,0,0,0)");
        }
    }
    /*鼠标影响图片轮换的方法主体*/
    function mouseSlide(){
        //判断鼠标所在图片是否已轮换过，选择右边图片移动或左边图片移动
        if(imgMouse > imgNow){//鼠标左边图片移动，即鼠标选中的是当前图片右边的图片
            for(var i= imgNow+1;i<=imgMouse;i++){
                //图片移动
                imgDiv.eq(i).stop().animate({'left':edgeDistance*i+'px'},500);
            }
            //重置当前图片的索引
            imgNow = imgMouse;
        }else{//鼠标右边图片移动，即鼠标选中的是当前图片左边的图片
            for(var i= imgNow;i>imgMouse;i--){
                //图片移动
                imgDiv.eq(i).stop().animate({
                    'left':imgOuterWidth-(imgDiv.size()-i)*edgeDistance+'px'
                },1000);
            }
            //重置当前图片的索引
            imgNow = imgMouse;
        }
    }

    /**********图片控制事件*************/
    /*图片自动轮换*/
    timeId = setInterval(autoSlide,2000);
    /*鼠标影响图片轮换*/
    imgDiv.hover(function(){
        //鼠标移入，停止自动轮换
        clearInterval(timeId);
        //获得鼠标停留在第几张图片，调用鼠标事件的方法
        imgMouse = $(this).index();
        if(imgMouse != imgNow){
            mouseSlide();
        }
    },function(){
        //鼠标离开，继续自动轮换
        timeId = setInterval(autoSlide,2000);
    }).bind('click',function(){
        imgNow = $(this).index();
    });

});


/*****************楼层加载****************/
$(function(){
    /***加载楼层1***/
    $.ajax({
        type:"get",
        url:"data/index/index_product_glasses.php",
        dataType:"json"
    }).then(function(products){
        //console.log(products);
        //首页楼层1内容
        var html="";
        products.forEach(function(p,i){
            var {title,pic, price, href}=p;
            if(i<1){
                html +=`<li class="cat-brand template3">
					<a href="${href}">
						<i>
							<img src="${pic}" >
						</i>
						<span>${title}</span>
					</a>
				</li>`;
            }else if(i<4){
              html+=`<li>
                    <a href="${href}">
                        <i>
                            <img src="${pic}">
                        </i>
                        <dl>
                            <dt>${title}</dt>
                            <dd>￥${parseFloat(price).toFixed(2)}</dd>
                         </dl>
                    </a>
                </li>`;
            }
        })
        document.querySelector("#f1>.reco-content>.reco-list").innerHTML=html;
    });

    /***加载楼层2***/
    $.ajax({
        type:"get",
        url:"data/index/index_product_man.php",
        dataType:"json"
    }).then(function(products){
        //console.log(products);
        //首页楼层2
        var html="";
        products.forEach(function(p,i){
            var {title,pic, price, href}=p;
            if(i<1){
                html +=`<li class="cat-brand template3">
					<a href="${href}">
						<i>
							<img src="${pic}" >
						</i>
						<span>${title}</span>
					</a>
				</li>`;
            }else if(i<9){
                html+=`<li>
                    <a href="${href}">
                        <i>
                            <img src="${pic}">
                        </i>
                        <dl>
                            <dt>${title}</dt>
                            <dd>￥${parseFloat(price).toFixed(2)}</dd>
                         </dl>
                    </a>
                </li>`;
            }
        })
        document.querySelector("#f2>.reco-content>.reco-list").innerHTML=html;
    });


    /***加载楼层3***/
    $.ajax({
        type:"get",
        url:"data/index/index_product_ms.php",
        dataType:"json"
    }).then(function(products){
        //console.log(products);
        //首页楼层2
        var html="";
        products.forEach(function(p,i){
            var {title,pic, price, href}=p;
            if(i<1){
                html +=`<li class="cat-brand template3">
					<a href="${href}">
						<i>
							<img src="${pic}" >
						</i>
						<span>${title}</span>
					</a>
				</li>`;
            }else if(i<9){
                html+=`<li>
                    <a href="${href}">
                        <i>
                            <img src="${pic}">
                        </i>
                        <dl>
                            <dt>${title}</dt>
                            <dd>￥${parseFloat(price).toFixed(2)}</dd>
                         </dl>
                    </a>
                </li>`;
            }
        })
        document.querySelector("#f3>.reco-content>.reco-list").innerHTML=html;
    });

    /***加载楼层4***/
    $.ajax({
        type:"get",
        url:"data/index/index_product_under.php",
        dataType:"json"
    }).then(function(products){
        //console.log(products);
        //首页楼层2
        var html="";
        products.forEach(function(p,i){
            var {title,pic, price, href}=p;
            if(i<1){
                html +=`<li class="cat-brand template3">
					<a href="${href}">
						<i>
							<img src="${pic}" >
						</i>
						<span>${title}</span>
					</a>
				</li>`;
            }else if(i<9){
                html+=`<li>
                    <a href="${href}">
                        <i>
                            <img src="${pic}">
                        </i>
                        <dl>
                            <dt>${title}</dt>
                            <dd>￥${parseFloat(price).toFixed(2)}</dd>
                         </dl>
                    </a>
                </li>`;
            }
        })
        document.querySelector("#f4>.reco-content>.reco-list").innerHTML=html;
    });


    /***加载楼层5***/
    $.ajax({
        type:"get",
        url:"data/index/index_product_children.php",
        dataType:"json"
    }).then(function(products){
        //console.log(products);
        //首页楼层2
        var html="";
        products.forEach(function(p,i){
            var {title,pic, price, href}=p;
            if(i<1){
                html +=`<li class="cat-brand template3">
					<a href="${href}">
						<i>
							<img src="${pic}" >
						</i>
						<span>${title}</span>
					</a>
				</li>`;
            }else if(i<9){
                html+=`<li>
                    <a href="${href}">
                        <i>
                            <img src="${pic}">
                        </i>
                        <dl>
                            <dt>${title}</dt>
                            <dd>￥${parseFloat(price).toFixed(2)}</dd>
                         </dl>
                    </a>
                </li>`;
            }
        })
        document.querySelector("#f5>.reco-content>.reco-list").innerHTML=html;
    });

    /***加载楼层6***/
    $.ajax({
        type:"get",
        url:"data/index/index_product_shoes.php",
        dataType:"json"
    }).then(function(products){
        //console.log(products);
        //首页楼层2
        var html="";
        products.forEach(function(p,i){
            var {title,pic, price, href}=p;
            if(i<1){
                html +=`<li class="cat-brand template3">
					<a href="${href}">
						<i>
							<img src="${pic}" >
						</i>
						<span>${title}</span>
					</a>
				</li>`;
            }else if(i<9){
                html+=`<li>
                    <a href="${href}">
                        <i>
                            <img src="${pic}">
                        </i>
                        <dl>
                            <dt>${title}</dt>
                            <dd>￥${parseFloat(price).toFixed(2)}</dd>
                         </dl>
                    </a>
                </li>`;
            }
        })
        document.querySelector("#f6>.reco-content>.reco-list").innerHTML=html;
    });


    /***加载楼层7***/
    $.ajax({
        type:"get",
        url:"data/index/index_product_outdoor.php",
        dataType:"json"
    }).then(function(products){
        //首页楼层2
        var html="";
        products.forEach(function(p,i){
            var {title,pic, price, href}=p;
            if(i<1){
                html +=`<li class="cat-brand template3">
					<a href="${href}">
						<i>
							<img src="${pic}" >
						</i>
						<span>${title}</span>
					</a>
				</li>`;
            }else if(i<9){
                html+=`<li>
                    <a href="${href}">
                        <i>
                            <img src="${pic}">
                        </i>
                        <dl>
                            <dt>${title}</dt>
                            <dd>￥${parseFloat(price).toFixed(2)}</dd>
                         </dl>
                    </a>
                </li>`;
            }
        })
        document.querySelector("#f7>.reco-content>.reco-list").innerHTML=html;
    });


    //为window绑定滚动事件
    var $divLift=$("#lift"),
        $recommend=$(".recommend-3");
    $(window).scroll(function(){
        var scrollTop=$(window).scrollTop();//scrollTop:页面超出文档距离
        if(scrollTop>=1000){           //判断条件，如果超出1000，点亮楼层就出现
            //楼层点亮效果
            $divLift.show();
            //遍历每个楼层
            $recommend.each(function(i,f){
                var $f=$(f);
                var offsetTop=$f.offset().top;
                if(offsetTop<=scrollTop+innerHeight/2)
                    $divLift.find(".lift_item:eq("+i+")")
                        .addClass("lift_item_on")
                        .siblings().removeClass("lift_item_on");
            })
        }else
            $divLift.hide();
    });
    //为左边楼层添加单击滚动事件_方法：利用冒泡
    $divLift.children("ul").on("click","li",function(){
        var $li=$(this);
        var i=$li.index();
        var offsetTop=$($recommend[i]).offset().top;
        $("html,body").stop(true).animate({
            scrollTop:offsetTop
        },500);
    })

});







