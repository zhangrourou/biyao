//衣服选中绑定事件
$(function(){
    /****衣服颜色和尺寸**/
    var $specsDimension=$(".specs-dimension");
    $($specsDimension).on("click","li",function(){
        $(this).addClass("lowModel-specs-active").siblings()
            .removeClass("lowModel-specs-active");
    });
    /****小图切换大图**/
    var $editorPic = $(".editor-pic>p>img");
    $(".editor-pic>ul>li>.small").click(function(){
        // console.log(111);
        $editorPic.attr("src",$(this).data("target"));
    })
    /****小图切边框**/
    var $editorP= $(".editor-pic>ul");
    $($editorP).on("click","li",function(){
        $(this).addClass("main-active").siblings().removeClass("main-active");
    })
    /***右边：添加商品事件***/
    var panelMain = document.getElementById("panel-main");
    // console.log(panelMain);
    var n = "";//num 值
    panelMain.onclick = function(e){
        var tar = e.target;
        if(/^(panel-minus|panel-add)$/i.test(tar.className)){
            var num = tar.parentNode.children[1];
            //console.log(num);//<span class="panel-number">1</span>
            n = $(num).text();//span没有value属性，$(num)是jquer一个对象 ，text()文本内容
            //console.log(n);
            if(tar.className=="panel-add")
                n++;
            else if(n>1)
                n--;
            $(num).text(n);
        }
    }


})
