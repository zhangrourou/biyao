#设置客户端连接服务器使用UTF8字符集
SET NAMES UTF8;
#丢弃数据库by如果存在的话
DROP DATABASE IF EXISTS biy;
#创建一个新的by表使用UTF8字符集
CREATE DATABASE biy CHARSET=UTF8;
#进入数据库biy
USE biy;

/*****用户模块相关的表*****/
#用户信息表
CREATE TABLE `biy_user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `upwd` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `phone` varchar(16) default NULL,
  `avatar` varchar(128) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

INSERT INTO biy_user VALUES
('1', 'dingding','123456','444456789@qq.com','13501111111','img/avatar/default.png', '丁春秋', '0'),
('2', 'dangdang','123456','333453789@qq.com','13502222222','img/avatar/default.png', '当当喵', '1'),
('3', 'doudou','123456','113432789@qq.com','13503333333','img/avatar/default.png', '豆豆', '1'),
('4', 'yaya','123456','113456111@qq.com','13604444444','img/avatar/default.png', '秦小雅', '0'),
('5', 'zhangsan','123456','2232426789@qq.com','13501134111',null,null,null),
('6', 'zz','123456','111156789@qq.com','13502224222',null,null,null),
('7', 'rr','123456','111456789@qq.com','13503233433',null,null,null),
('8', 'gaga','123456','213456789@qq.com','13502444444',null,null,null),
('9', 'xixi','123456','113456789@qq.com','11111111111',null,null,null),
('10', 'xuyong', '123456', '123456789@qq.com', '15525623622', null, null, null),
('11', 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', null, null, null),
('12', 'siyongbo', '900427', '616188545@qq.com', '18447103998', null, null, null),
('13', 'qwerty', '123456', '1091256014@qq.com', '15617152367', null, null, null),
('14', 'dingziqiang', '456456', '996534706@qq.com', '15567502520', null, null, null),
('15', 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', null, null, null),
('16', 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', null, null, null),
('17', 'img', 'cxy930123', 'mail@xingyu1993.cn.1', '11111111111', null, null, null),
('18', 'body', 'cxy930123', 'mail@xingyu1993.cn.2', '22222222222', null, null, null),
('19', '<img src=@>', 'cxy930123', 'mail@xingyu1993.cn.3', '33333333333', null, null, null),
('20', '气航航', 'wyh961130', '1419591926@qq.com', '15927204115', null, null, null),
('21', 'Jessy', 'ac210921', '123456@qq.com', '13523456789', null, null, null),
('22', 'yuanxf', '123456', 'yuanxf@tedu.cn', '13537763301', null, null, null),
('23', '查安军', '025520', '27514172112@qq.com', '18158899905', null, null, null),
('24', '123456', '123456', '123456@1.com', '13815668132', null, null, null),
('25', '1234', '111111', '734713428@qq.com', '18061920422', null, null, null),
('26', 'qwe12345', '123123', '1191769510@qq.com', '15234010643', null, null, null),
('27', '海贼王', '5124457', 'hxxcrocky@qq.com', '18826450879', null, null, null),
('28', 'hanrufuyun00', '123456', '458205630@qq.com', '13853114827', null, null, null),
('29', 'li999999', 'li999999', 'limingdir@163.com', '18557512341', null, null, null),
('30', '111111111111', '123456', '1057631733@qq.com', '15275106677', null, null, null),
('31', 'tom', '123456', 'tom@tedu.cn', '13801234568', null, null, null),
('32', 'zhouzhi', '123456', '2206344145@qq.com', '17600587478', null, null, null),
('33', 'juleck', '123456', 'wuhaofushan@sina.com', '12345678901', null, null, null),
('34', 'yangtao', '123456', '250737026@qq.com', '18256953222', null, null, null),
('35', 'tarena', '123456', '783664829@qq.com', '17711625897', null, null, null),
('36', 'xiaobai', 'xx527603', '1196465493@qq.com', '13980312111', null,null, null),
('37', '璐璐lu', '546521ll', '1273447080@qq.com', '15892761793', null, null, null),
('38', 'pwaa', '123456', '1179524522@qq.com', '13269195181', null,null, null),
('39', 'Yeye ', '123456', '1610608370@qq.com', '15062394551', null, null, null),
('40', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null),
('41', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null),
('42', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null),
('43', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null),
('44', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null),
('45', 'hjh', '958030', 'hjh@126.com', '17812344567', null, null, null),
('46', 'ewq', '123456', '1234567890@qq.com', '12345678909', null, null, null),
('47', 'pipi', '123456', '78@qq.com', '12367889993', null, null, null),
('48', 'Lovica', '309418727', '1684707021@qq.com', '18435130456', null, null, null),
('49', 'htt0908', '19920908', '418720482@qq.com', '15244691033', null, null, null),
('50', 'SUXUEMEI', '123456', 'SUXUEMEI@qq.com', '15817338974', null, null, null),
('51', 'zhong', '123456', '123456789@126.com', '13120211111', null, null, null),
('52', '金豆豆', '123456789', '1170363143@qq.com', '15738619097', null, null, null),
('53', 'wangjunfei', '123456', '396225880@qq.com', '13205935797', null, null, null),
('54', 'gijhglkhglkh', '123456', 'sjksfj@fjdh.com', '15698765423', null, null, null),
('55', 'zuiyd1314', 'zuiyh1994', '528396697@qq.com', '15927843908', null, null, null),
('56', 'xiaoming123', '123456', '54646@qq.com', '13553688534', null, null, null),
('57', 'yuanzhi', '123456', '270096123@qq.com', '15962573639', null, null, null),
('58', 'fengkuang11', 'fengkuang113', '1135779768@qq.com', '18559132247', null, null, null),
('59', 'fengkuang', '123456', '113577976@qq.com', '18559132248', null, null, null),
('60', 'yxzaaa', '123456', '2280517552@qq.com', '13716225357', null, null, null),
('61', 'linlei0001', '58874439', '876056078@qq.com', '13390922939', null, null, null),
('62', 'superman', '1314520', '904202099@qq.com', '12345678910', null, null, null),
('63', 'tom222', '123456', '1@163.com', '13456789012', null, null, null),
('64', 'tom1234', '123456', '2@163.com', '13423456789', null, null, null),
('65', 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', null, null, null),
('66', 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', null, null, null),
('67', '李白李白', '123456', '125365@163.com', '13986273022', null, null, null),
('68', 'dingdong', '123456', '15194898156@qq.com', '15112316516', null, null, null),
('69', 'wenjinhua', '236239', '461677613@qq.com', '13516574786', null, null, null),
('70', 'thebigleg', '1a4b2c8d5e7f', '1352951609@qq.com', '13572508752', null, null, null),
('71', 'zhangsan', 'add123456', 'add@qq.com', '12234324223', null, null, null),
('72', '高渐离', '123456', '935263676@qq.com', '18352501250', null, null, null),
('73', 'lifan', '123456', '18092034652@163.com', '18092933456', null, null, null),
('74', 'zhangsan99', '123456zs', '876987366@qq.com', '13934721892', null, null, null),
('75', 'tingDING', '123456', '12345678@qq.com', '13548525468', null, null, null),
('76', 'dongdong', '123456', 'wenhua@taqobao.com', '13946585968', null, null, null),
('77', 'weiyiwei', '123456', '598475405@qq.com', '15923741956', null, null, null),
('78', '落英缤纷赋酒诗', 'sAberTime050', '857464657@qq.com', '17727420979', null, null, null),
('79', 'xiaoming1234', '123456', '4564564564@qq.com', '15269188535', null, null, null),
('80', 'loonchao', '123456', '850248873@qq.com', '13548729051', null, null, null),
('81', 'hushuang', '123456', '850248813@qq.com', '15802507525', null, null, null),
('82', 'test713', '2017713', '12458148@qq.com', '13596542654', null, null, null),
('83', 'fhr9588', '000009588', '111111111@qq.com', '12345666666', null, null, null),
('84', 'baibaidexue', '13809024377', '408130701@qq.com', '18301973827', null, null, null),
('85', 'tom10', '123456', '123@163.com', '12323456', null, null, null),
('86', '12121', '121212', '516898@qq.com', '15163222922', null, null, null),
('87', 'qwer', 'qwer123', '519808982@qq.com', '15163222923', null, null, null),
('88', '芳芳。。', '111111', '627265@qq.com', '17704622223', null, null, null),
('89', 'smm123456', '963852741', '974255093@qq.com', '15098807312', null, null, null),
('90', 'Wenhua.Li', 'libenka', 'wenhua.li@tedu.cn', '13912345678', null, null, null);



/*****轮播图模块*****/
#首页轮播广告表
CREATE TABLE index_carousel (
  cid int(11) NOT NULL auto_increment,
  img varchar(128) default NULL,
  title varchar(64) default NULL,
  href varchar(128) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
INSERT INTO index_carousel VALUES
('1', 'img/banner/01.jpg', '轮播广告商品1', 'supplier.html?'),
('2', 'img/banner/02.jpg', '轮播广告商品2', 'supplier.html?'),
('3', 'img/banner/03.jpg', '轮播广告商品3', 'supplier.html?'),
('4', 'img/banner/04.jpg', '轮播广告商品4', 'supplier.html?'),
('5', 'img/banner/05.jpg', '轮播广告商品5', 'supplier.html?'),
('6', 'img/banner/06.jpg', '轮播广告商品6', 'supplier.html?');

#手风琴轮播
CREATE TABLE index_carousel_02 (
  cid int(11) NOT NULL auto_increment,
  img varchar(128) default NULL,
  title varchar(64) default NULL,
  href varchar(128) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
INSERT INTO index_carousel_02 VALUES
('1', 'pic/com-show/2.jpg', '轮播广告商品1', 'supplier.html?'),
('2', 'pic/com-show/2-1.jpg', '轮播广告商品2', 'supplier.html?'),
('3', 'pic/com-show/2-2.jpg', '轮播广告商品3', 'supplier.html?'),
('4', 'pic/com-show/2-3.jpg', '轮播广告商品4', 'supplier.html?'),
('5', 'pic/com-show/2-4.jpg', '轮播广告商品5', 'supplier.html?'),
('6', 'pic/com-show/2-5.jpg', '轮播广告商品6', 'supplier.html?');

/*****首页商品分类*****/
#眼镜表
CREATE TABLE index_product_glasses(
	pid INT PRIMARY KEY AUTO_INCREMENT,  #编号
	title VARCHAR(64),                   #标题
	pic VARCHAR(128),                    #图片
	price DECIMAL(10,2),                 #价格
	href VARCHAR(128),                   #链接
	seq_recommended TINYINT,
	seq_new_arrival TINYINT,
	seq_top_sale TINYINT
);
INSERT INTO index_product_glasses VALUES
('1', '依视路集团旗下企业&nbsp;&nbsp;制造商直供','pic/com-show/3.jpg', 'null', 'product_details.html?pid=1', '1', '1', '1'),
('2', '纯钛飞行员（可配近视）', 'pic/com-show/3-1.jpg', '249', 'product_details.html?pid=5', '2', '2', '2'),
('3', 'Soft.舒适光学镜', 'pic/com-show/3-2.jpg', '189', 'product_details.html?pid=9', '3', '3', '3'),
('4', 'AIR超轻光学镜-C', 'pic/com-show/3-3.jpg', '169', 'product_details.html?pid=13', '4', '4', '4');

#男装
CREATE TABLE index_product_man(
	pid INT PRIMARY KEY AUTO_INCREMENT,  #编号
	title VARCHAR(64),                   #标题
	pic VARCHAR(128),                    #图片
	price DECIMAL(10,2),                 #价格
	href VARCHAR(128),                   #链接
	seq_recommended TINYINT,
	seq_new_arrival TINYINT,
	seq_top_sale TINYINT
);
INSERT INTO index_product_man VALUES
('1', 'Hugo Boss、PRADA等  制造商直供', 'pic/com-show/4.jpg', 'null', 'product.html?pid=1', '5', '5', '5'),
('2', 'SofTAL免烫短袖POLO衫', 'pic/com-show/4-1.jpg', '189', 'product.html?pid=1', '6', '6', '6'),
('3', '凉感功能免烫商务短袖衬衫', 'pic/com-show/4-2.jpg', '209', 'product.html?pid=1', '7', '7', '7'),
('4', '进口面料轻薄修身牛仔裤', 'pic/com-show/4-3.jpg', '299', 'product.html?pid=1', '8', '8', '8'),
('5', '60S细纱织丝光珠地POLO衫', 'pic/com-show/4-4.jpg', '139', 'product.html?pid=1', '9', '9', '9'),
('6', 'MARLANE弹力透气修身西裤', 'pic/com-show/4-5.jpg', '409', 'product.html?pid=1', '10', '10', '10'),
('7', '弹力麻男士V领衫',  'pic/com-show/4-6.jpg', '199', 'product.html?pid=1', '11', '11', '11'),
('8', '灰条纹 冷感控温 休闲西裤', 'pic/com-show/4-7.jpg', '339', 'product.html?pid=1', '12', '12', '12'),
('9', '意大利商旅两用半里便西', 'pic/com-show/4-8.jpg', '1390', 'product.html?pid=1', '13', '13', '13');


#女装
CREATE TABLE index_product_ms(
	pid INT PRIMARY KEY AUTO_INCREMENT,  #编号
	title VARCHAR(64),                   #标题
	pic VARCHAR(128),                    #图片
	price DECIMAL(10,2),                 #价格
	href VARCHAR(128),                   #链接
	seq_recommended TINYINT,
	seq_new_arrival TINYINT,
	seq_top_sale TINYINT
);
INSERT INTO index_product_ms VALUES
('1', 'MaxMara、Diesel等  制造商直供', 'pic/com-show/5.jpg', 'null', 'product_details.html?pid=17', '1', '1', '1'),
('2', '丝光棉黑白T恤（两件装）', 'pic/com-show/5-1.jpg', '199', 'product_details.html?pid=38', '2', '2', '2'),
('3', '藏青色修身弹力裤', 'pic/com-show/5-2.jpg', '249', 'product_details.html?pid=19', '3', '3', '3'),
('4', '大牌面料针织蝙蝠袖条纹T', 'pic/com-show/5-3.jpg', '149', 'product_details.html?pid=5', '4', '4', '4'),
('5', '长款纯色休闲开衫', 'pic/com-show/5-4.jpg', '299', 'product_details.html?pid=9', '5', '5', '5'),
('6', '露肩高腰荷叶袖连衣裙', 'pic/com-show/5-5.jpg', '299', 'product_details.html?pid=13', '6', '6', '6'),
('7', '蕾丝拼接印花纯棉T恤', 'pic/com-show/5-6.jpg', '169', 'product_details.html?pid=17', '7', '7', '7'),
('8', '无痕速干修身吊带打底裙', 'pic/com-show/5-7.jpg', '199', 'product_details.html?pid=19', '8', '8', '8'),
('9', '14针小V领冰丝抽条T恤', 'pic/com-show/5-8.jpg', '199', 'product_details.html?pid=38', '9', '9', '9');

#内衣袜子
CREATE TABLE index_product_under(
	pid INT PRIMARY KEY AUTO_INCREMENT,  #编号
	title VARCHAR(64),                   #标题
	pic VARCHAR(128),                    #图片
	price DECIMAL(10,2),                 #价格
	href VARCHAR(128),                   #链接
	seq_recommended TINYINT,
	seq_new_arrival TINYINT,
	seq_top_sale TINYINT
);
INSERT INTO index_product_under VALUES
('1', 'CK、LA PERLA等  制造商直供', 'pic/com-show/6.jpg', 'null', 'product_details.html?pid=17', '1', '1', '1'),
('2', '随形裁无钢圈背心文胸', 'pic/com-show/6-1.jpg', '149', 'product_details.html?pid=19', '2', '2', '2'),
('3', 'A.S.S.全棉七分袖家居套装', 'pic/com-show/6-2.jpg', '159', 'product_details.html?pid=19', '3', '3', '3'),
('4', '莫代尔平角内裤5色装', 'pic/com-show/6-3.jpg', '159', 'product_details.html?pid=5', '4', '4', '4'),
('5', '国家专利不掉跟隐形袜x5', 'pic/com-show/6-4.jpg', '75', 'product_details.html?pid=9', '5', '5', '5'),
('6', '融暄 天竺棉家居服短袖', 'pic/com-show/6-5.jpg', '159', 'product_details.html?pid=13', '6', '6', '6'),
('7', '竹纤维中筒男袜*5', 'pic/com-show/6-6.jpg', '69', 'product_details.html?pid=17', '7', '7', '7'),
('8', '肤色蕾丝拼接高腰塑身裤', 'pic/com-show/6-7.jpg', '99', 'product_details.html?pid=19', '8', '8', '8'),
('9', '无痕平角内裤4条', 'pic/com-show/6-8.jpg', '¥179', 'product_details.html?pid=38', '9', '9', '9');


#母婴儿童
CREATE TABLE index_product_children(
	pid INT PRIMARY KEY AUTO_INCREMENT,  #编号
	title VARCHAR(64),                   #标题
	pic VARCHAR(128),                    #图片
	price DECIMAL(10,2),                 #价格
	href VARCHAR(128),                   #链接
	seq_recommended TINYINT,
	seq_new_arrival TINYINT,
	seq_top_sale TINYINT
);
INSERT INTO index_product_children VALUES
('1', '英国皇室御用服装  制造商直供',  'pic/com-show/7.jpg', 'null', 'product_details.html?pid=17', '1', '1', '1'),
('2', '男童网布运动鞋', 'pic/com-show/7-1.jpg', '139', 'product_details.html?pid=19', '2', '2', '2'),
('3', '菲菲羽儿弱酸扭扭裤XXL码', 'pic/com-show/7-2.jpg', '89', 'product_details.html?pid=38', '3', '3', '3'),
('4', 'A.S.S.中大童条纹短袖T恤', 'pic/com-show/7-3.jpg', '69', 'product_details.html?pid=19', '4', '4', '4'),
('5', '1至3年级减负书包', 'pic/com-show/7-4.jpg', '199', 'product_details.html?pid=5', '5', '5', '5'),
('6', '优质儿童木质积木 100粒装', 'pic/com-show/7-5.jpg', '99', 'product_details.html?pid=9', '6', '6', '6'),
('7', '儿童纯棉翻领POLO衫T恤', 'pic/com-show/7-6.jpg', '129', 'product_details.html?pid=13', '7', '7', '7'),
('8', '简易婴儿床', 'pic/com-show/7-7.jpg', '599', 'product_details.html?pid=17', '8', '8', '8'),
('9', '骑行滑步一体童车', 'pic/com-show/7-8.jpg', '469', 'product_details.html?pid=19', '9', '9', '9');


#男女鞋靴
CREATE TABLE index_product_shoes(
	pid INT PRIMARY KEY AUTO_INCREMENT,  #编号
	title VARCHAR(64),                   #标题
	pic VARCHAR(128),                    #图片
	price DECIMAL(10,2),                 #价格
	href VARCHAR(128),                   #链接
	seq_recommended TINYINT,
	seq_new_arrival TINYINT,
	seq_top_sale TINYINT
);
INSERT INTO index_product_shoes VALUES
('1', 'LACOSTE等  制造商直供', 'pic/com-show/8.jpg', 'null', 'product_details.html?pid=17', '1', '1', '1'),
('2', '钻点结扣凉鞋', 'pic/com-show/8-1.jpg', '259', 'product_details.html?pid=38', '2', '2', '2'),
('3', '罗马中跟女鞋 55mm', 'pic/com-show/8-2.jpg', '379', 'product_details.html?pid=19', '3', '3', '3'),
('4', '男士时尚沙滩凉鞋', 'pic/com-show/8-3.jpg', '199', 'product_details.html?pid=5', '4', '4', '4'),
('5', '四季休闲健步鞋', 'pic/com-show/8-4.jpg', '169', 'product_details.html?pid=9', '5', '5', '5'),
('6', '春夏一脚蹬男鞋',  'pic/com-show/8-5.jpg', '169', 'product_details.html?pid=13', '6', '6', '6'),
('7', '平头冲孔德比鞋', 'pic/com-show/8-6.jpg', '419', 'product_details.html?pid=17', '7', '7', '7'),
('8', '环扣装饰轻便女鞋 10mm', 'pic/com-show/8-7.jpg', '379', 'product_details.html?pid=19', '8', '8', '8'),
('9', '休闲舒适户外魔术贴凉鞋男', 'pic/com-show/8-8.jpg', '199', 'product_details.html?pid=38', '9', '9', '9');


#户外运动
CREATE TABLE index_product_outdoor(
	pid INT PRIMARY KEY AUTO_INCREMENT,  #编号
	title VARCHAR(64),                   #标题
	pic VARCHAR(128),                    #图片
	price DECIMAL(10,2),                 #价格
	href VARCHAR(128),                   #链接
	seq_recommended TINYINT,
	seq_new_arrival TINYINT,
	seq_top_sale TINYINT
);
INSERT INTO index_product_outdoor VALUES
('1', '斯凯奇、Saucony等  制造商直供', 'pic/com-show/9.jpg', 'null', 'product_details.html?pid=17', '1', '1', '1'),
('2', '超轻舒适缓震休闲跑步鞋男', 'pic/com-show/9-1.jpg', '199', 'product_details.html?pid=19', '2', '2', '2'),
('3', '男子休闲运动长裤', 'pic/com-show/9-2.jpg', '239', 'product_details.html?pid=19', '3', '3', '3'),
('4', 'RC男士轻量跑步速干短裤', 'pic/com-show/9-3.jpg', '129', 'product_details.html?pid=5', '4', '4', '4'),
('5', '男士一体织休闲运动鞋', 'pic/com-show/9-4.jpg', '279', 'product_details.html?pid=9', '5', '5', '5'),
('6', '轻薄透气跑步袜×3', 'pic/com-show/9-5.jpg', '89', 'product_details.html?pid=13', '6', '6', '6'),
('7', '折叠野餐地毯', 'pic/com-show/9-6.jpg', '39', 'product_details.html?pid=17', '7', '7', '7'),
('8', 'Rp-s1全马级别专业跑鞋男', 'pic/com-show/9-7.jpg', '279', 'product_details.html?pid=19', '8', '8', '8'),
('9', '控制型羽毛球拍', 'pic/com-show/9-8.jpg', '289', 'product_details.html?pid=38', '9', '9', '9');



/*****商品列表模块*****/
#男装
CREATE TABLE man(
	pid INT PRIMARY KEY AUTO_INCREMENT,  #编号
	title VARCHAR(64),                   #标题
	pic VARCHAR(128),                    #图片
	price DECIMAL(10,2),                 #价格
	href VARCHAR(128),                   #链接
	seq_recommended TINYINT,
	seq_new_arrival TINYINT,
	seq_top_sale TINYINT
);
INSERT INTO man VALUES
#短袖
('1', '50S婴儿级无感印花纯棉T恤', 'pic/man/1.jpg', '99', 'product_details.html', '1', '1', '1'),
('2', '丝光间条圆领男士短袖T恤', 'pic/man/2.jpg', '139', 'product_details.html', '2', '2', '2'),
('3', '60S/2移圈布男士短袖T恤', 'pic/man/3.jpg', '179', 'product_details.html', '3', '3', '3'),
('4', '珠地拼接圆领男士短袖T恤', 'pic/man/4.jpg', '139', 'product_details.html?pid=19', '4', '4', '4'),
('5', '立体印花男士短T', 'pic/man/5.jpg', '149', 'product_details.html?pid=5', '5', '5', '5'),
('6', '圆领纯棉条纹T恤衫', 'pic/man/6.jpg', '199', 'product_details.html?pid=9', '6', '6', '6'),
('7', '双面布丝光柔滑短T（2件）',  'pic/man/7.jpg', '199', 'product_details.html?pid=13', '7', '7', '7'),
('8', '120支精梳长绒棉精工短T', 'pic/man/8.jpg', '249', 'product_details.html?pid=17', '8', '8', '8'),
('9', '莫代尔V领T恤（两件装）', 'pic/man/9.jpg', '209', 'product_details.html?pid=19', '9', '9', '9'),
('10', '40针100支双衬衫工艺短T', 'pic/man/10.jpg', '249', 'product_details.html?pid=19', '10', '10', '10'),
('11', '冰氧吧面料圆领T恤', 'pic/man/11.jpg', '159', 'product_details.html?pid=19', '11', '11', '11'),
('12', '趣味杯脸绣花章圆领T恤6色', 'pic/man/12.jpg', '159', 'product_details.html?pid=19', '12', '12', '12'),
('13', '莫代尔织带点缀T恤5色可选', 'pic/man/13.jpg', '139', 'product_details.html?pid=19', '13', '13', '13'),
('14', '虎头压花圆领T恤BY1049', 'pic/man/14.jpg', '159', 'product_details.html?pid=19', '14', '14', '14'),
('15', 'Pima棉半开襟短袖T恤', 'pic/man/15.jpg', '179', 'product_details.html?pid=19', '15', '15', '15'),
('16', '美国棉丝光彩虹绣花T恤4色', 'pic/man/16.jpg', '179', 'product_details.html?pid=19', '16', '16', '16'),
('17', '男士圆领短袖针织衫', 'pic/man/17.jpg', '199', 'product_details.html?pid=19', '17', '17', '17'),
('18', '100%长绒棉60S男士短袖T恤', 'pic/man/18.jpg', '139', 'product_details.html?pid=19', '18', '18', '18'),
('19', '双面布丝光印花短袖体恤', 'pic/man/19.jpg', '179', 'product_details.html?pid=19', '19', '19', '19'),
('20', 'V领短T恤2件装', 'pic/man/20.jpg', '219', 'product_details.html?pid=19', '20', '20', '20'),
#衬衫
('21', '50S婴儿级无感印花纯棉T恤', 'pic/man/41.jpg', '99', 'product_details.html?pid=17', '21', '21', '21'),
('22', '丝光间条圆领男士短袖T恤', 'pic/man/42.jpg', '139', 'product_details.html?pid=19', '22', '22', '22'),
('24', '珠地拼接圆领男士短袖T恤', 'pic/man/44.jpg', '139', 'product_details.html?pid=19', '24', '24', '24'),
('25', '立体印花男士短T', 'pic/man/45.jpg', '149', 'product_details.html?pid=5', '25', '25', '25'),
('26', '圆领纯棉条纹T恤衫', 'pic/man/46.jpg', '199', 'product_details.html?pid=9', '26', '26', '26'),
('27', '双面布丝光柔滑短T（2件）',  'pic/man/47.jpg', '199', 'product_details.html?pid=13', '27', '27', '27'),
('28', '120支精梳长绒棉精工短T', 'pic/man/48.jpg', '249', 'product_details.html?pid=17', '28', '28', '28'),
('29', '莫代尔V领T恤（两件装）', 'pic/man/49.jpg', '209', 'product_details.html?pid=19', '29', '29', '29'),
('30', '40针100支双衬衫工艺短T', 'pic/man/50.jpg', '249', 'product_details.html?pid=19', '30', '30', '30'),
('31', '冰氧吧面料圆领T恤', 'pic/man/51.jpg', '159', 'product_details.html?pid=19', '31', '31', '31'),
('32', '趣味杯脸绣花章圆领T恤6色', 'pic/man/52.jpg', '159', 'product_details.html?pid=19', '32', '32', '32'),
('33', '莫代尔织带点缀T恤5色可选', 'pic/man/53.jpg', '139', 'product_details.html?pid=19', '33', '33', '33'),
('34', '虎头压花圆领T恤BY1049', 'pic/man/54.jpg', '159', 'product_details.html?pid=19', '34', '34', '34'),
('35', 'Pima棉半开襟短袖T恤', 'pic/man/55.jpg', '179', 'product_details.html?pid=19', '35', '35', '35'),
('36', '美国棉丝光彩虹绣花T恤4色', 'pic/man/56.jpg', '179', 'product_details.html?pid=19', '36', '36', '36'),
('37', '男士圆领短袖针织衫', 'pic/man/57.jpg', '199', 'product_details.html?pid=19', '37', '37', '37'),
('38', '100%长绒棉60S男士短袖T恤', 'pic/man/58.jpg', '139', 'product_details.html?pid=19', '38', '38', '38'),
('39', '双面布丝光印花短袖体恤', 'pic/man/59.jpg', '179', 'product_details.html?pid=19', '39', '39', '39'),
('40', 'V领短T恤2件装', 'pic/man/60.jpg', '219', 'product_details.html?pid=19', '40', '40', '40'),
#POLO衫
('41', '50S婴儿级无感印花纯棉T恤', 'pic/man/70.jpg', '99', 'product_details.html?pid=17', '41', '41', '41'),
('42', '丝光间条圆领男士短袖T恤', 'pic/man/72.jpg', '139', 'product_details.html?pid=19', '42', '42', '42'),
('43', '60S/2移圈布男士短袖T恤', 'pic/man/73.jpg', '179', 'product_details.html?pid=38', '43', '43', '43'),
('44', '珠地拼接圆领男士短袖T恤', 'pic/man/74.jpg', '139', 'product_details.html?pid=19', '44', '44', '44'),
('45', '立体印花男士短T', 'pic/man/75.jpg', '149', 'product_details.html?pid=5', '45', '45', '45'),
('46', '圆领纯棉条纹T恤衫', 'pic/man/76.jpg', '199', 'product_details.html?pid=9', '46', '46', '46'),
 ('47', '双面布丝光柔滑短T（2件）',  'pic/man/77.jpg', '199', 'product_details.html?pid=13', '47', '47', '47'),
('48', '120支精梳长绒棉精工短T', 'pic/man/78.jpg', '249', 'product_details.html?pid=17', '48', '48', '48'),
('49', '珠地拼接圆领男士短袖T恤', 'pic/man/79.jpg', '139', 'product_details.html?pid=19', '49', '49', '49'),
('50', '立体印花男士短T', 'pic/man/80.jpg', '149', 'product_details.html?pid=5', '50', '50', '50'),
('51', '圆领纯棉条纹T恤衫', 'pic/man/81.jpg', '199', 'product_details.html?pid=9', '51', '51', '51'),
('52', '双面布丝光柔滑短T（2件）',  'pic/man/82.jpg', '199', 'product_details.html?pid=13', '52', '52', '52'),
('53', '120支精梳长绒棉精工短T', 'pic/man/83.jpg', '249', 'product_details.html?pid=17', '53', '53', '53'),
#针织衫
('54', '50S婴儿级无感印花纯棉T恤', 'pic/man/100.jpg', '99', 'product_details.html?pid=17', '54', '54', '54'),
('55', '丝光间条圆领男士短袖T恤', 'pic/man/101.jpg', '139', 'product_details.html?pid=19', '55', '55', '55'),
('56', '60S/2移圈布男士短袖T恤', 'pic/man/102.jpg', '179', 'product_details.html?pid=38', '56', '56', '65'),
('57', '珠地拼接圆领男士短袖T恤', 'pic/man/103.jpg', '139', 'product_details.html?pid=19', '57', '57', '57'),
('58', '立体印花男士短T', 'pic/man/104.jpg', '149', 'product_details.html?pid=5', '58', '58', '58'),
('59', '圆领纯棉条纹T恤衫', 'pic/man/105.jpg', '199', 'product_details.html?pid=9', '59', '59', '59'),
('60', '双面布丝光柔滑短T（2件）',  'pic/man/106.jpg', '199', 'product_details.html?pid=13', '60', '60', '60'),
('61', '120支精梳长绒棉精工短T', 'pic/man/107.jpg', '249', 'product_details.html?pid=17', '61', '61', '61'),
('62', '120支精梳长绒棉精工短T', 'pic/man/108.jpg', '249', 'product_details.html?pid=17', '62', '62', '62'),
('63', '120支精梳长绒棉精工短T', 'pic/man/109.jpg', '249', 'product_details.html?pid=17', '63', '63', '63');


/************购物车***********/
CREATE TABLE `biy_shoppingcart` (
  `iid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `count` int(11) default NULL,
  `is_checked` tinyint(1) default NULL,
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

INSERT INTO `biy_shoppingcart` VALUES
('1', '10', '17', '1', '0'),
('2', '11', '11', '1', '0'),
('3', '12', '1', '1', '1'),
('4', '13', '3', '9', '0'),
('5', '14', '1', '1', '0'),
('13', '20', '1', '1', '1'),
('14', '22', '17', '11', '1'),
('15', '20', '28', '1', '0'),
('16', '25', '2', '1', '1'),
('17', '3', '28', '1', '1'),
('18', '3', '14', '1', '1'),
('19', '28', '1', '99997', '0'),
('20', '29', '31', '1', '1'),
('25', '3', '18', '1', '0'),
('26', '32', '13', '1', '0'),
('27', '32', '5', '1', '0'),
('28', '32', '19', '1', '0'),
('29', '33', '1', '1', '0'),
('31', '3', '1', '1', '0'),
('32', '35', '20', '1', '0'),
('33', '2', '19', '1', '1'),
('34', '39', '19', '1', '1'),
('35', '1', '5', '15', '1'),
('36', '1', '28', '2', '1'),
('37', '1', '9', '1', '1'),
('38', '45', '22', '1', '0'),
('39', '46', '1', '1', '0'),
('40', '48', '28', '1', '1'),
('41', '1', '1', '6', '1'),
('42', '50', '28', '1', '1'),
('43', '52', '28', '1', '1'),
('44', '51', '5', '1', '1'),
('45', '54', '1', '1', '1'),
('46', '56', '28', '1', '1'),
('47', '59', '5', '1', '0'),
('48', '59', '9', '1', '0'),
('49', '59', '19', '1', '0'),
('50', '31', '1', '1', '1'),
('51', '59', '1', '2', '0'),
('52', '60', '28', '1', '1'),
('53', '46', '21', '1', '0'),
('54', '1', '12', '2', '1'),
('55', '61', '5', '1', '1'),
('56', '61', '6', '1', '0'),
('57', '70', '1', '1', '1'),
('58', '71', '1', '1', '1'),
('59', '1', '4', '3', '1'),
('60', '36', '17', '1', '1'),
('61', '35', '17', '7', '0'),
('62', '35', '5', '13', '0'),
('63', '72', '9', '1', '1'),
('64', '82', '1', '1', '1'),
('65', '83', '17', '1', '1'),
('66', '35', '28', '4', '0'),
('67', '65', '40', '2', '0');



/***********商品分类***********/
CREATE TABLE biy_laptop_family (
  fid int(11) NOT NULL auto_increment,
  fname varchar(32) default NULL,
  PRIMARY KEY  (fid)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO biy_laptop_family VALUES
('1', '品质男装'),
('2', '光学眼镜'),
('3', '潮流女装'),
('4', '内衣袜子'),
('5', '母婴儿童'),
('6', '男女鞋靴'),
('7', '户外运动');


CREATE TABLE biy_laptop (
  lid int(11) NOT NULL auto_increment,       #编号
  family_id int(11) default NULL,            #分类
  title varchar(128) default NULL,           #标题
  subtitle varchar(128) default NULL,        #副标题
  price decimal(10,2) default NULL,          #价格
  spec varchar(64) default NULL,             #型号
  lname varchar(32) default NULL,            #名称
  details varchar(1024) default NULL,        #详情
  sold_count int(11) default NULL,           #数量
 href VARCHAR(128),                          #链接
  is_onsale tinyint(1) default NULL,         #是否上线
  PRIMARY KEY  (lid)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

INSERT INTO biy_laptop VALUES
('1', '1', '50S婴儿级无感印花水柔棉T','男士50S基础T恤婴儿级无感印花超柔水柔棉半袖T恤CafeOle MB2T043' ,'199','M','品质男装','纱线采用50支双100%超柔水柔棉，手感顺滑，柔软舒适、透气，垂感好。','12345','product.html',1),
('2', '1', '50S婴儿级无感印花水柔棉T','男士50S基础T恤婴儿级无感印花超柔水柔棉半袖T恤CafeOle MB2T043' ,'299','M','品质男装','纱线采用50支双100%超柔水柔棉，手感顺滑，柔软舒适、透气，垂感好。','12345','product.html',1),
('3', '1', '50S婴儿级无感印花水柔棉T','男士50S基础T恤婴儿级无感印花超柔水柔棉半袖T恤CafeOle MB2T043' ,'399','M','品质男装','纱线采用50支双100%超柔水柔棉，手感顺滑，柔软舒适、透气，垂感好。','12345','product.html',1),
('4', '2', '纯钛飞行员（可配近视）','纯钛飞行员太阳镜-BGS6001（可配近视）' ,'199','M','光学眼镜','高端航空纯钛打造，经典飞行员造型。。','12345','product.html',1),
('5', '2', '纯钛飞行员（可配近视）','纯钛飞行员太阳镜-BGS6001（可配近视）' ,'299','M','光学眼镜','高端航空纯钛打造，经典飞行员造型。。','12345','product.html',0),
('6', '2', '纯钛飞行员（可配近视）','纯钛飞行员太阳镜-BGS6001（可配近视）' ,'399','M','光学眼镜','高端航空纯钛打造，经典飞行员造型。。','12345','product.html',1),
('7', '3', '轻薄面料密拷边工艺小衫','轻薄雪纺密拷边工艺圆领珍珠纽扣小衫' ,'199','M','潮流女装','轻薄雪纺，密拷边工艺，层次分明，线条利落，时尚百搭。','12345','product.html',0),
('8', '3', '轻薄面料密拷边工艺小衫','轻薄雪纺密拷边工艺圆领珍珠纽扣小衫' ,'299','M','潮流女装','轻薄雪纺，密拷边工艺，层次分明，线条利落，时尚百搭。','12345','product.html',1),
('9', '3', '轻薄面料密拷边工艺小衫','轻薄雪纺密拷边工艺圆领珍珠纽扣小衫' ,'399','M','潮流女装','轻薄雪纺，密拷边工艺，层次分明，线条利落，时尚百搭。','12345','product.html',1),
('10', '4', '舒适无钢圈大胸文胸 3色','苏薇之恋舒适无钢圈大胸文胸单品' ,'199','M','内衣袜子','大胸福音，3D裁剪杯型，无钢圈。','12345','product.html',1),
('11', '4', '舒适无钢圈大胸文胸 3色','苏薇之恋舒适无钢圈大胸文胸单品' ,'299','M','内衣袜子','大胸福音，3D裁剪杯型，无钢圈。','12345','product.html',0),
('12', '4', '舒适无钢圈大胸文胸 3色','苏薇之恋舒适无钢圈大胸文胸单品' ,'399','M','内衣袜子','大胸福音，3D裁剪杯型，无钢圈。','12345','product.html',1),
('13', '5', '婴儿礼盒','婴儿纯棉精选礼盒 MC02901' ,'199','M','母婴儿童','纯棉精选 柔软舒适 送礼佳品。','12345','product.html',1),
('14', '5', '婴儿礼盒','婴儿纯棉精选礼盒 MC02901' ,'299','M','母婴儿童','纯棉精选 柔软舒适 送礼佳品。','12345','product.html',1),
('15', '5', '婴儿礼盒','婴儿纯棉精选礼盒 MC02901' ,'399','M','母婴儿童','纯棉精选 柔软舒适 送礼佳品。','12345','product.html',0),
('16', '6', ' 磨砂双横带男凉鞋','磨砂双横带男凉鞋VG180417-1' ,'199','M','男女鞋靴','磨砂质感脚床面吸汗防滑 后包魔术带设计 自我调节松紧提升舒适度。','12345','product.html',1),
('17', '6', ' 磨砂双横带男凉鞋','磨砂双横带男凉鞋VG180417-1' ,'299','M','男女鞋靴','磨砂质感脚床面吸汗防滑 后包魔术带设计 自我调节松紧提升舒适度。','12345','product.html',0),
('18', '6', ' 磨砂双横带男凉鞋','磨砂双横带男凉鞋VG180417-1' ,'399','M','男女鞋靴','磨砂质感脚床面吸汗防滑 后包魔术带设计 自我调节松紧提升舒适度。','12345','product.html',1),
('19', '7', '时尚运动内衣套装三色可选','苏薇之恋时尚运动内衣套装' ,'199','M','户外运动','专业运动面料与国际吊染工艺的时尚结合。','12345','product.html',1),
('20', '7', '时尚运动内衣套装三色可选','苏薇之恋时尚运动内衣套装' ,'299','M','户外运动','专业运动面料与国际吊染工艺的时尚结合。','12345','product.html',1),
('21', '7', '时尚运动内衣套装三色可选','苏薇之恋时尚运动内衣套装' ,'399','M','户外运动','专业运动面料与国际吊染工艺的时尚结合。','12345','product.html',0);
