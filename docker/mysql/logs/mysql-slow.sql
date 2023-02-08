mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2021-12-15T05:56:28.827233Z
# User@Host: root[root] @ localhost []  Id:     3
# Query_time: 1.012814  Lock_time: 0.000100 Rows_sent: 0  Rows_examined: 0
use mysql;
SET timestamp=1639547788;
INSERT INTO time_zone_transition (Time_zone_id, Transition_time, Transition_type_id) VALUES
 (@time_zone_id, -2147483648, 0)
,(@time_zone_id, -1441167712, 1)
,(@time_zone_id, -1247544000, 2)
,(@time_zone_id, 354913209, 3)
,(@time_zone_id, 370720810, 4)
,(@time_zone_id, 386445610, 3)
,(@time_zone_id, 402256811, 2)
,(@time_zone_id, 417985211, 3)
,(@time_zone_id, 433792812, 2)
,(@time_zone_id, 449607612, 3)
,(@time_zone_id, 465339612, 5)
,(@time_zone_id, 481064412, 6)
,(@time_zone_id, 496789213, 5)
,(@time_zone_id, 512514013, 6)
,(@time_zone_id, 528238813, 5)
,(@time_zone_id, 543963613, 6)
,(@time_zone_id, 559688413, 5)
,(@time_zone_id, 575413214, 6)
,(@time_zone_id, 591138014, 5)
,(@time_zone_id, 606862814, 6)
,(@time_zone_id, 622587614, 5)
,(@time_zone_id, 638312415, 6)
,(@time_zone_id, 654642015, 5)
,(@time_zone_id, 670366816, 7)
,(@time_zone_id, 686095216, 5)
,(@time_zone_id, 695768416, 8)
,(@time_zone_id, 701812816, 6)
,(@time_zone_id, 717541217, 5)
,(@time_zone_id, 733266017, 6)
,(@time_zone_id, 748990818, 5)
,(@time_zone_id, 764715618, 6)
,(@time_zone_id, 780440419, 5)
,(@time_zone_id, 796165219, 6)
,(@time_zone_id, 811890019, 5)
,(@time_zone_id, 828219620, 6)
,(@time_zone_id, 846363620, 5)
,(@time_zone_id, 859669220, 6)
,(@time_zone_id, 877813221, 5)
,(@time_zone_id, 891118821, 6)
,(@time_zone_id, 909262821, 5)
,(@time_zone_id, 922568422, 6)
,(@time_zone_id, 941317222, 5)
,(@time_zone_id, 954018022, 6)
,(@time_zone_id, 972766822, 5)
,(@time_zone_id, 985467622, 6)
,(@time_zone_id, 1004216422, 5)
,(@time_zone_id, 1017522022, 6)
,(@time_zone_id, 1035666022, 5)
,(@time_zone_id, 1048971622, 6)
,(@time_zone_id, 1067115622, 5)
,(@time_zone_id, 1080421222, 6)
,(@time_zone_id, 1099170022, 8)
,(@time_zone_id, 1545328827, 2);
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2021-12-15T07:40:20.728309Z
# User@Host: phpmig[phpmig] @  [172.19.0.2]  Id:    12
# Query_time: 5.025743  Lock_time: 0.002192 Rows_sent: 0  Rows_examined: 0
use shop;
SET timestamp=1639554020;
TRUNCATE TABLE login_history;
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2021-12-16T14:42:45.483882Z
# User@Host: phpmig[phpmig] @  [172.22.0.3]  Id:   237
# Query_time: 0.661507  Lock_time: 0.000000 Rows_sent: 0  Rows_examined: 0
use shop;
SET timestamp=1639665765;
CREATE TABLE order_details (
            `id` integer(11) NOT NULL AUTO_INCREMENT,
            `ordersId` varchar(50) NOT NULL,
            `product_code` varchar(50) NOT NULL,
            `shop_product_code` varchar(50) NOT NULL,
            `name` varchar(50) NOT NULL,
            `price` integer NOT NULL,
            `quantity` integer NOT NULL,
            `jan_code` varchar(50) NOT NULL,
            `delete_flg` boolean NOT NULL DEFAULT false,
            `created_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            PRIMARY KEY (`id`),
            INDEX idx(`ordersId`), 
            FOREIGN KEY (`ordersId`) REFERENCES orders(`ordersId`)
             ON DELETE CASCADE
             ON UPDATE CASCADE

            );
# Time: 2021-12-16T17:35:51.525989Z
# User@Host: phpmig[phpmig] @  [172.22.0.3]  Id:   309
# Query_time: 0.827737  Lock_time: 0.001738 Rows_sent: 0  Rows_examined: 0
SET timestamp=1639676151;
TRUNCATE TABLE product_reviews;
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2021-12-25T22:41:03.842741Z
# User@Host: root[root] @  [172.29.0.1]  Id:     6
# Query_time: 0.726950  Lock_time: 0.002675 Rows_sent: 0  Rows_examined: 2
use shop;
SET timestamp=1640472063;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2021-12-25T22:42:28.362115Z
# User@Host: root[root] @  [172.29.0.1]  Id:     7
# Query_time: 0.580640  Lock_time: 0.001827 Rows_sent: 0  Rows_examined: 2
SET timestamp=1640472148;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2021-12-25T22:48:58.058117Z
# User@Host: root[root] @  [172.29.0.1]  Id:    11
# Query_time: 0.512278  Lock_time: 0.007643 Rows_sent: 0  Rows_examined: 2
SET timestamp=1640472538;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2021-12-25T22:49:18.388270Z
# User@Host: phpmig[phpmig] @  [172.29.0.5]  Id:     9
# Query_time: 0.909030  Lock_time: 0.000234 Rows_sent: 0  Rows_examined: 0
SET timestamp=1640472558;
insert into products
               (
                   product_code,
                   shop_product_code,
                   name,
                   product_img,
                   price,
                   stock,
                   maker,
                   jan_code,
                   catch_copy,
                   description,
                   delete_flg,
                   created_at,
                   updated_at
               ) values (
                'pid9278296781',
                'shopPid0006722447',
                '辞典じてんてきます。その白い鳥の島しま。',
                'https://lorempixel.com/400/200/cats/Faker/?87937',
                '8486',
                '70',
                'non',
                '7776110738821',
                'つの小さな豆いろ議論ぎろん農業のうちでいました。その考えていました。その鳥捕と。',
                'マトでですね」とジョバンニは、わあいいかい青年も誰だれがむずかのかどを見上げて、まるでざわ言いって来ようになって牧場ぼくずいぶんからね、そこに大きな建物たてものがら、そのとこが、くちびるを二人ふたり席せきが海の底そこらに挙あげてにげるのがら上着うわ、あすこしだったように川だっていねえ」「あなを一袋ふくのようこう岸ぎしがにわから今晩こんや自分の胸むねいに言いわの鶴つるされて、なんだん近づく見えるよ。',
                false,
                '2020-05-13 14:26:33',
                '2020-05-13 14:26:33'
                
                );
# Time: 2021-12-25T22:49:38.375208Z
# User@Host: phpmig[phpmig] @  [172.29.0.5]  Id:     9
# Query_time: 1.008054  Lock_time: 0.000132 Rows_sent: 0  Rows_examined: 0
SET timestamp=1640472578;
insert into products
               (
                   product_code,
                   shop_product_code,
                   name,
                   product_img,
                   price,
                   stock,
                   maker,
                   jan_code,
                   catch_copy,
                   description,
                   delete_flg,
                   created_at,
                   updated_at
               ) values (
                'pid0452830345',
                'shopPid7455615695',
                'とがつめたかったいと困こまではあの森琴。',
                'https://lorempixel.com/400/200/cats/Faker/?73430',
                '2177',
                '93',
                'totam',
                '7566597484171',
                '跡あしと口とぐあとの間原稿げんぜん二千二百年ころへ引いた、あすこには、水晶すい。',
                'ら見る方なら」女の子は、なんだん気をつけたり手をあげたカムパネルラが、ジョバンニはだしてやすみきっぷ「もって荷物にもなくみもみんな星に見えました。月のあるいはいっしゃるんだのときどきっと明るくなって見ると、にげたかったんだわ」「今晩こんどん流ながらしてごらんでした。女の子が、はいいかがくしく時を指ゆびさしくなるよ」「ほんとほんとう蕈きの列れつにちが明るい黒い髪かみの間は、蛍ほたるをもっとしてしま。',
                false,
                '2019-09-10 11:00:46',
                '2019-09-10 11:00:46'
                
                );
# Time: 2021-12-25T22:49:38.772839Z
# User@Host: root[root] @  [172.29.0.1]  Id:    12
# Query_time: 1.414667  Lock_time: 0.001008 Rows_sent: 0  Rows_examined: 2
SET timestamp=1640472578;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2021-12-25T22:50:10.812234Z
# User@Host: root[root] @  [172.29.0.1]  Id:    14
# Query_time: 1.302982  Lock_time: 0.011747 Rows_sent: 0  Rows_examined: 2
SET timestamp=1640472610;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2021-12-25T22:54:10.615316Z
# User@Host: phpmig[phpmig] @  [172.29.0.5]  Id:    15
# Query_time: 0.813093  Lock_time: 0.000000 Rows_sent: 0  Rows_examined: 0
SET timestamp=1640472850;
CREATE TABLE shipping (
            `id` integer(11) NOT NULL AUTO_INCREMENT,
            `name` varchar(50) NOT NULL,
            `cost` integer(10) NOT NULL,
            `memo` varchar(255) NOT NULL,
            `delete_flg` boolean NOT NULL DEFAULT false,
            `created_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            PRIMARY KEY (`id`)
            ) ENGINE=InnoDB;
# Time: 2021-12-25T22:55:08.370435Z
# User@Host: phpmig[phpmig] @  [172.29.0.5]  Id:    15
# Query_time: 0.996259  Lock_time: 0.000123 Rows_sent: 0  Rows_examined: 0
SET timestamp=1640472908;
insert into product_reviews
                        (
                            productsId,
                            usersId,
                            content,
                            rank,
                            created_at,
                            updated_at
                        ) values (
                         '163',
                         '47',
                         'でもいるところが青ざめていただい」そこから、どっかさんのとないのでしょか何か用かと思ううでした。ジョバンニは、こっちにもこって行きました。「ほんとうにそろえてまるでがらんとうだいて、わらいな水晶すいそぎまぎしまいました。女の子をジョバンニのときました。その私がこんばっているかねえ」「あの姉弟きょう」「標本室ひょう」二人ふたりました。「わたくをゆるい服ふくに十ばかり、乳ちちを見ました。「カムパネル。',
                         '3',
                         '2017-07-07 04:26:21',
                         '2017-07-07 04:26:21'
                        );
# Time: 2021-12-25T23:04:13.988283Z
# User@Host: root[root] @  [172.29.0.1]  Id:    16
# Query_time: 0.514709  Lock_time: 0.002380 Rows_sent: 0  Rows_examined: 2
SET timestamp=1640473453;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2021-12-26T00:22:02.926287Z
# User@Host: phpmig[phpmig] @  [172.31.0.5]  Id:     3
# Query_time: 0.542473  Lock_time: 0.000126 Rows_sent: 0  Rows_examined: 0
use shop;
SET timestamp=1640478122;
insert into products
               (
                   product_code,
                   shop_product_code,
                   name,
                   product_img,
                   price,
                   stock,
                   maker,
                   jan_code,
                   catch_copy,
                   description,
                   delete_flg,
                   created_at,
                   updated_at
               ) values (
                'pid0662763368',
                'shopPid1121597630',
                'ていたちいっしはすこしの下に、眼鏡きん。',
                'https://lorempixel.com/400/200/cats/Faker/?24446',
                '8358',
                '8',
                'illum',
                '3690097231868',
                'ふいて立って叫さけびましたもんがの岸きしに、わたってしましたくなってしかけず、。',
                'とっている、三つなら、「ジョバンニは、明るくらかったら、自分の胸むねに集あつまっ赤になってたりすすきっときどき眼めをカムパネルラは、せいので、野原のはぼんやりとりながら天の川もやって正面しょうがくしく規則以外きそく正しく流ながら、「ザネリが前のレンズを指さしてしまいた姉あねは弟を自分はまただしましたけれども親切そう言いわの上には、だまっ白な蝋ろうかご承知しょに行こう岸ぎしのどくで鳴り、また青い鋼。',
                false,
                '2019-01-21 20:34:26',
                '2019-01-21 20:34:26'
                
                );
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2021-12-26T03:28:39.066215Z
# User@Host: root[root] @  [192.168.0.1]  Id:    10
# Query_time: 0.761021  Lock_time: 0.001750 Rows_sent: 0  Rows_examined: 2
use shop;
SET timestamp=1640489319;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2021-12-26T03:32:31.317521Z
# User@Host: root[root] @  [192.168.0.1]  Id:    13
# Query_time: 0.652316  Lock_time: 0.001439 Rows_sent: 0  Rows_examined: 2
SET timestamp=1640489551;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2021-12-26T03:55:44.342705Z
# User@Host: root[root] @  [192.168.0.1]  Id:    21
# Query_time: 0.900115  Lock_time: 0.001445 Rows_sent: 0  Rows_examined: 2
SET timestamp=1640490944;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2021-12-26T03:58:30.830003Z
# User@Host: root[root] @  [192.168.0.1]  Id:     3
# Query_time: 0.593904  Lock_time: 0.001071 Rows_sent: 0  Rows_examined: 2
use shop;
SET timestamp=1640491110;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2021-12-26T08:16:44.669808Z
# User@Host: root[root] @  [192.168.0.1]  Id:     5
# Query_time: 0.514370  Lock_time: 0.002065 Rows_sent: 0  Rows_examined: 2
SET timestamp=1640506604;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2021-12-26T08:20:12.672347Z
# User@Host: phpmig[phpmig] @  [192.168.0.6]  Id:     8
# Query_time: 1.008776  Lock_time: 0.000097 Rows_sent: 0  Rows_examined: 0
SET timestamp=1640506812;
insert into order_details
                        (
                            ordersId,
                            productsId,
                            product_code,
                            shop_product_code,
                            name,
                            price,
                            quantity,
                            jan_code,
                            created_at,
                            updated_at
                        ) values (
                         '2020-11-1180909575',
                         '39',
                         'pid4658445476',
                         'shopPid3336777239',
                         '青の旗はたく向むこういちばんめんをもっ。',
                         '3940',
                         '2',
                         '7412013487564',
                         '2017-10-30 11:24:17',
                         '2017-10-30 11:24:17'
                         );
# Time: 2021-12-26T09:00:52.578752Z
# User@Host: root[root] @  [192.168.0.1]  Id:    11
# Query_time: 0.515451  Lock_time: 0.001849 Rows_sent: 0  Rows_examined: 2
SET timestamp=1640509252;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2021-12-26T15:22:17.868144Z
# User@Host: phpmig[phpmig] @  [192.168.0.6]  Id:    15
# Query_time: 0.525824  Lock_time: 0.000000 Rows_sent: 0  Rows_examined: 0
SET timestamp=1640532137;
CREATE TABLE shipping (
            `id` integer(11) NOT NULL AUTO_INCREMENT,
            `name` varchar(50) NOT NULL,
            `cost` integer(10) NOT NULL,
            `memo` varchar(255) NOT NULL,
            `delete_flg` boolean NOT NULL DEFAULT false,
            `created_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            PRIMARY KEY (`id`)
            ) ENGINE=InnoDB;
# Time: 2021-12-26T15:22:36.049184Z
# User@Host: phpmig[phpmig] @  [192.168.0.6]  Id:    15
# Query_time: 0.631909  Lock_time: 0.000000 Rows_sent: 0  Rows_examined: 0
SET timestamp=1640532156;
CREATE TABLE orders (
            `id` integer(11) NOT NULL AUTO_INCREMENT,
            `ordersId` varchar(50) NOT NULL,
            `usersId` integer(11) NOT NULL,
            `firstname` varchar(190) NOT NULL,
            `lastname` varchar(190) NOT NULL,
            `firstname_kana` varchar(255) NOT NULL,
            `lastname_kana` varchar(255) NOT NULL,
            `email` varchar(255) NOT NULL,
            `phone_number` varchar(15) NOT NULL,
            `postcode` int(7) NOT NULL,
            `prefecture` varchar(10) NOT NULL,
            `address1` varchar(100) NOT NULL,
            `address2` varchar(100) NOT NULL,
            `user_ranksId` integer(11) NOT NULL,
            `staffsId` integer(11) NOT NULL,
            `delete_flg` boolean NOT NULL DEFAULT false,
            `created_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            PRIMARY KEY (`id`),
            INDEX idx(ordersId), 
            FOREIGN KEY (`usersId`) REFERENCES users(`id`) 
             ON DELETE CASCADE
             ON UPDATE CASCADE,
            FOREIGN KEY (`staffsId`) REFERENCES staffs(`id`) 
             ON DELETE CASCADE
             ON UPDATE CASCADE
            ) ENGINE=InnoDB;
# Time: 2021-12-26T15:22:43.337614Z
# User@Host: phpmig[phpmig] @  [192.168.0.6]  Id:    15
# Query_time: 0.642999  Lock_time: 0.000000 Rows_sent: 0  Rows_examined: 0
SET timestamp=1640532163;
CREATE TABLE product_reviews (
            `id` integer(11) NOT NULL AUTO_INCREMENT,
            `productsId` integer(11) NOT NULL,
            `usersId` integer(11) NOT NULL,
            `content` varchar(255) NOT NULL,
            `rank` integer(1) NOT NULL,
            `delete_flg` boolean NOT NULL DEFAULT false,
            `created_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            PRIMARY KEY (`id`),
            INDEX idx_pid(`productsId`), 
            INDEX idx_uid(`usersId`), 
            FOREIGN KEY (`productsId`) REFERENCES products(`id`)
             ON DELETE CASCADE
             ON UPDATE CASCADE,
            FOREIGN KEY (`usersId`) REFERENCES users(`id`)
             ON DELETE CASCADE
             ON UPDATE CASCADE
            ) ENGINE=InnoDB;
# Time: 2021-12-26T15:22:55.924138Z
# User@Host: root[root] @  [192.168.0.1]  Id:    16
# Query_time: 1.367254  Lock_time: 0.001661 Rows_sent: 0  Rows_examined: 2
SET timestamp=1640532175;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2021-12-26T15:23:55.233844Z
# User@Host: root[root] @  [192.168.0.1]  Id:    18
# Query_time: 0.843810  Lock_time: 0.001985 Rows_sent: 0  Rows_examined: 2
SET timestamp=1640532235;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2022-01-04T12:38:32.314091Z
# User@Host: phpmig[phpmig] @  [192.168.0.4]  Id:     2
# Query_time: 0.938213  Lock_time: 0.002213 Rows_sent: 13  Rows_examined: 13
use shop;
SET timestamp=1641299912;
select table_schema as table_catalog, null as table_schema, table_name, table_comment, table_rows from information_schema.tables where table_schema='shop' and table_type='BASE TABLE';
# Time: 2022-01-04T12:40:06.691646Z
# User@Host: root[root] @  [192.168.0.1]  Id:     5
# Query_time: 2.227344  Lock_time: 0.001641 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641300006;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2022-01-04T12:41:00.670748Z
# User@Host: root[root] @  [192.168.0.1]  Id:     6
# Query_time: 1.954784  Lock_time: 0.003928 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641300060;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2022-01-04T12:41:08.384940Z
# User@Host: root[root] @  [192.168.0.1]  Id:     7
# Query_time: 1.812337  Lock_time: 0.061135 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641300068;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2022-01-04T12:43:03.195442Z
# User@Host: root[root] @  [192.168.0.1]  Id:     9
# Query_time: 1.081306  Lock_time: 0.005710 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641300183;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2022-01-04T12:43:40.338645Z
# User@Host: phpmig[phpmig] @  [192.168.0.3]  Id:    10
# Query_time: 0.569917  Lock_time: 0.000000 Rows_sent: 0  Rows_examined: 0
SET timestamp=1641300220;
CREATE TABLE user_ranks (
            `id` integer(11) NOT NULL AUTO_INCREMENT,
            `name` varchar(50) NOT NULL,
            `memo` varchar(50) NOT NULL,
            `delete_flg` boolean NOT NULL DEFAULT false,
            `created_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            PRIMARY KEY (`id`)
            ) ENGINE=InnoDB;
# Time: 2022-01-04T12:43:50.661584Z
# User@Host: root[root] @  [192.168.0.1]  Id:    11
# Query_time: 2.181410  Lock_time: 0.003911 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641300230;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2022-01-04T12:43:57.622757Z
# User@Host: phpmig[phpmig] @  [192.168.0.3]  Id:    10
# Query_time: 0.502762  Lock_time: 0.000000 Rows_sent: 0  Rows_examined: 0
SET timestamp=1641300237;
CREATE TABLE products (
            `id` integer(11) NOT NULL AUTO_INCREMENT,
            `product_code` varchar(50) NOT NULL,
            `shop_product_code` varchar(50) NOT NULL,
            `name` varchar(50) NOT NULL,
            `product_img` varchar(255) NOT NULL,
            `price` integer NOT NULL,
            `stock` integer NOT NULL,
            `maker` varchar(50) NOT NULL,
            `jan_code` varchar(50) NOT NULL,
            `catch_copy` varchar(255) NOT NULL,
            `description` varchar(255) NOT NULL,
            `delete_flg` boolean NOT NULL DEFAULT false,
            `created_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            PRIMARY KEY (`id`)
            ) ENGINE=InnoDB;
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2022-01-04T12:45:35.550050Z
# User@Host: phpmig[phpmig] @  [192.168.0.3]  Id:     2
# Query_time: 0.678917  Lock_time: 0.000156 Rows_sent: 11  Rows_examined: 11
use shop;
SET timestamp=1641300335;
select table_schema as table_catalog, null as table_schema, table_name, table_comment, table_rows from information_schema.tables where table_schema='shop' and table_type='BASE TABLE';
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2022-01-04T13:08:14.267985Z
# User@Host: phpmig[phpmig] @  [192.168.0.6]  Id:     4
# Query_time: 0.909420  Lock_time: 0.000141 Rows_sent: 0  Rows_examined: 0
use shop;
SET timestamp=1641301694;
insert into order_details
                        (
                            ordersId,
                            productsId,
                            product_code,
                            shop_product_code,
                            name,
                            price,
                            quantity,
                            jan_code,
                            created_at,
                            updated_at
                        ) values (
                         '2017-02-02777231319',
                         '115',
                         'pid2369860116',
                         'shopPid2938861727',
                         '「ありが非常ひじょう。いました。それは。',
                         '6096',
                         '1',
                         '8691711701434',
                         '2019-11-23 10:51:43',
                         '2019-11-23 10:51:43'
                         );
# Time: 2022-01-04T13:08:43.724215Z
# User@Host: root[root] @  [192.168.0.1]  Id:     5
# Query_time: 0.554742  Lock_time: 0.001847 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641301723;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2022-01-05T04:36:21.923337Z
# User@Host: phpmig[phpmig] @  [192.168.0.5]  Id:     2
# Query_time: 0.722247  Lock_time: 0.029521 Rows_sent: 13  Rows_examined: 13
use shop;
SET timestamp=1641357381;
select table_schema as table_catalog, null as table_schema, table_name, table_comment, table_rows from information_schema.tables where table_schema='shop' and table_type='BASE TABLE';
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
mysqld, Version: 5.7.36-log (MySQL Community Server (GPL)). started with:
Tcp port: 0  Unix socket: /var/run/mysqld/mysqld.sock
Time                 Id Command    Argument
# Time: 2022-01-05T08:41:02.961799Z
# User@Host: phpmig[phpmig] @  [192.168.0.3]  Id:     2
# Query_time: 0.724438  Lock_time: 0.001115 Rows_sent: 13  Rows_examined: 13
use shop;
SET timestamp=1641372062;
select table_schema as table_catalog, null as table_schema, table_name, table_comment, table_rows from information_schema.tables where table_schema='shop' and table_type='BASE TABLE';
# Time: 2022-01-05T08:41:08.172894Z
# User@Host: phpmig[phpmig] @  [192.168.0.3]  Id:     2
# Query_time: 1.120538  Lock_time: 0.000096 Rows_sent: 13  Rows_examined: 13
SET timestamp=1641372068;
SHOW FULL TABLES FROM `shop`;
# Time: 2022-01-07T00:16:43.583975Z
# User@Host: root[root] @  [192.168.0.1]  Id:     5
# Query_time: 0.855143  Lock_time: 0.140038 Rows_sent: 0  Rows_examined: 1038
SET timestamp=1641514603;
show variables like 'aurora\_version';
# Time: 2022-01-07T00:16:45.861132Z
# User@Host: root[root] @  [192.168.0.1]  Id:     5
# Query_time: 0.744935  Lock_time: 0.014667 Rows_sent: 1  Rows_examined: 1
SET timestamp=1641514605;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select table_name from information_schema.tables
        where table_schema collate utf8_general_ci = 'information_schema'
          and table_name collate utf8_general_ci = 'parameters';
# Time: 2022-01-07T00:16:50.178904Z
# User@Host: root[root] @  [192.168.0.1]  Id:     5
# Query_time: 0.684076  Lock_time: 0.003632 Rows_sent: 13  Rows_examined: 38
SET timestamp=1641514610;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          table_name,
          index_name,
          index_comment,
          index_type,
          non_unique,
          column_name,
          sub_part,
          collation,
          null expression
        from information_schema.statistics
        where table_schema = 'shop' and
              index_schema = 'shop' and
              index_name collate utf8_general_ci <> 'PRIMARY'
        order by
          index_schema,
          table_name,
          index_name,
          seq_in_index;
# Time: 2022-01-07T00:16:57.773737Z
# User@Host: root[root] @  [192.168.0.1]  Id:     5
# Query_time: 5.792656  Lock_time: 0.002050 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641514617;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2022-01-07T00:17:32.289578Z
# User@Host: root[root] @  [192.168.0.1]  Id:     6
# Query_time: 2.526242  Lock_time: 0.007734 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641514652;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2022-01-07T02:57:54.486877Z
# User@Host: root[root] @  [192.168.0.1]  Id:    10
# Query_time: 0.759930  Lock_time: 0.000250 Rows_sent: 1  Rows_examined: 1
SET timestamp=1641524274;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select table_name from information_schema.tables
        where table_schema collate utf8_general_ci = 'information_schema'
          and table_name collate utf8_general_ci = 'parameters';
# Time: 2022-01-07T02:57:57.228602Z
# User@Host: root[root] @  [192.168.0.1]  Id:    10
# Query_time: 0.616834  Lock_time: 0.000145 Rows_sent: 31  Rows_examined: 31
SET timestamp=1641524277;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select table_name, table_type, table_comment, engine, table_collation
        from information_schema.tables
        where table_schema = 'mysql';
# Time: 2022-01-07T02:58:03.391876Z
# User@Host: root[root] @  [192.168.0.1]  Id:    10
# Query_time: 5.516873  Lock_time: 0.000309 Rows_sent: 7  Rows_examined: 76
SET timestamp=1641524283;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          table_name,
          index_name,
          index_comment,
          index_type,
          non_unique,
          column_name,
          sub_part,
          collation,
          null expression
        from information_schema.statistics
        where table_schema = 'mysql' and
              index_schema = 'mysql' and
              index_name collate utf8_general_ci <> 'PRIMARY'
        order by
          index_schema,
          table_name,
          index_name,
          seq_in_index;
# Time: 2022-01-07T02:58:06.996533Z
# User@Host: root[root] @  [192.168.0.1]  Id:    10
# Query_time: 2.945158  Lock_time: 0.117025 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641524286;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'mysql';
# Time: 2022-01-07T02:58:11.999336Z
# User@Host: root[root] @  [192.168.0.1]  Id:    10
# Query_time: 1.991182  Lock_time: 0.000169 Rows_sent: 0  Rows_examined: 0
SET timestamp=1641524291;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          table_name,
          index_name,
          index_comment,
          index_type,
          non_unique,
          column_name,
          sub_part,
          collation,
          null expression
        from information_schema.statistics
        where table_schema = 'performance_schema' and
              index_schema = 'performance_schema' and
              index_name collate utf8_general_ci <> 'PRIMARY'
        order by
          index_schema,
          table_name,
          index_name,
          seq_in_index;
# Time: 2022-01-07T02:58:17.332100Z
# User@Host: root[root] @  [192.168.0.1]  Id:    10
# Query_time: 4.711671  Lock_time: 0.105105 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641524297;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'performance_schema';
# Time: 2022-01-07T02:58:23.191811Z
# User@Host: root[root] @  [192.168.0.1]  Id:    10
# Query_time: 3.139822  Lock_time: 0.002476 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641524303;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2022-01-07T02:58:29.428791Z
# User@Host: root[root] @  [192.168.0.1]  Id:    10
# Query_time: 5.397793  Lock_time: 0.000263 Rows_sent: 101  Rows_examined: 101
SET timestamp=1641524309;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select table_name, table_type, table_comment, engine, table_collation
        from information_schema.tables
        where table_schema = 'sys';
# Time: 2022-01-07T02:58:35.387576Z
# User@Host: root[root] @  [192.168.0.1]  Id:    10
# Query_time: 4.503132  Lock_time: 0.011049 Rows_sent: 2  Rows_examined: 2
SET timestamp=1641524315;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'sys';
# Time: 2022-01-07T02:59:28.794247Z
# User@Host: root[root] @  [192.168.0.1]  Id:    13
# Query_time: 0.837319  Lock_time: 0.000539 Rows_sent: 7  Rows_examined: 76
SET timestamp=1641524368;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          table_name,
          index_name,
          index_comment,
          index_type,
          non_unique,
          column_name,
          sub_part,
          collation,
          null expression
        from information_schema.statistics
        where table_schema = 'mysql' and
              index_schema = 'mysql' and
              index_name collate utf8_general_ci <> 'PRIMARY'
        order by
          index_schema,
          table_name,
          index_name,
          seq_in_index;
# Time: 2022-01-07T02:59:32.122077Z
# User@Host: root[root] @  [192.168.0.1]  Id:    13
# Query_time: 2.896794  Lock_time: 0.001450 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641524372;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'mysql';
# Time: 2022-01-07T03:01:14.296762Z
# User@Host: root[root] @  [192.168.0.1]  Id:    14
# Query_time: 2.636239  Lock_time: 0.002807 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641524474;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'mysql';
# Time: 2022-01-07T03:02:33.520620Z
# User@Host: root[root] @  [192.168.0.1]  Id:    15
# Query_time: 3.932845  Lock_time: 0.099686 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641524553;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'mysql';
# Time: 2022-01-07T06:05:34.167696Z
# User@Host: root[root] @  [192.168.0.1]  Id:    17
# Query_time: 0.627659  Lock_time: 0.011734 Rows_sent: 0  Rows_examined: 1038
SET timestamp=1641535534;
show variables like 'aurora\_version';
# Time: 2022-01-07T06:05:43.658584Z
# User@Host: root[root] @  [192.168.0.1]  Id:    18
# Query_time: 2.688736  Lock_time: 0.010399 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641535543;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2022-01-07T06:13:28.454293Z
# User@Host: root[root] @  [192.168.0.1]  Id:    22
# Query_time: 3.752482  Lock_time: 0.128942 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641536008;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
# Time: 2022-01-07T06:20:12.416061Z
# User@Host: root[root] @  [192.168.0.1]  Id:    23
# Query_time: 2.360438  Lock_time: 0.001458 Rows_sent: 0  Rows_examined: 2
SET timestamp=1641536412;
/* ApplicationName=IntelliJ IDEA 2021.3 */ select
          trigger_name,
          event_object_table,
          event_manipulation,
          action_timing,
          definer
        from information_schema.triggers
        where trigger_schema = 'shop';
