import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: (settings) {
          if (settings.name == PassArgumentsScreen.routeName) {
            final ScreenArguments args = settings.arguments;

            return MaterialPageRoute(
              builder: (context) {
                return PassArgumentsScreen(
                  title: args.title,
                  message: args.message,
                );
              },
            );
          }
          assert(false, 'Need to implement ${settings.name}');
          return null;
        },
        title: 'Navigation with Arguments',
        home: HomeScreen(),
        routes: {
          ExtractArgumentsScreen.routeName: (context) =>
              ExtractArgumentsScreen(),
        });
  }
}

class HomeScreen extends StatelessWidget {
  static var allList = [];
  static List<Common> commonStrings;

  getList() {
    String arrayText =
        '{"subject": [{"name":"挖掘","str":"","img":"assets/img/dig.jpg"},{"name":"恐懼","str":"","img":"assets/img/fear.jpg"},{"name":"怨恨","str":"","img":"assets/img/hate.jpg"},{"name":"疾病","str":"","img":"assets/img/sick.jpg"},{"name":"遺傳","str":"","img":"assets/img/genetic.jpg"},{"name":"固境","str":"","img":"assets/img/dilemma.jpg"},{"name":"不可能的事","str":"重新設定我們的大腦\\n\\n下載什麼都是有可能的\\n\\n移除恐懼\\n\\n如果能見證療癒,將會發生什麼事?","img":""},{"name":"第一次基本組合包","str":"掃描身体,清理脈輪,靈性勾子,靈魂碎片,游離漂盪的記憶","img":""},{"name":"美容基本組合包","str":"啟動DNA,修復遣傳基因,轉化老化基因","img":""},{"name":"信念轉換","str":"master, 我下指令將[名子]的舊有[信念]從歷史層中拔出、化解,從其他三個層面拔出、取消，送到造物主的光中，然後轉換成新的[信念]用8個組合包下載到[名子]的四個信念層裡面及体內的每個細胞每個DNA,還有生活的方方面面,用最好、最適合的方式替換witness","img":""},{"name":"子宮裡的胎兒","str":"集中無條件的愛,master, 我下指令給回溯到些人的胎兒時期,把愛送給這個還在母親子宮的胎兒witness","img":""},{"name":"下載無機物","str":"master，command以最好最理想的方試去教這[物質][感覺]witness","img":""},{"name":"高我","str":"master，command跟[名子]的高我對話.witness\\n\\n把意識移到個案頂輪,從頂輪尋找個案的高我\\n高我對話\\n有時間可以問問題","img":""},{"name":"植物對話","str":"master，command讓我像羽毛般地掃描這植物（七秒),造物主請顯示給我需要看的東西,finish.回到七做觀想","img":""},{"name":"袓先連結","str":"master,下指令:[master, command去看並與這個[靈]]的對話，finish\\n\\n進入個案空間,注視這個個案肩膀上方\\n\\n輕呼喚袓先或過世動物的靈，等待他們現身，問題傳給這個靈,反應給個案.\\n看到或聽到的第一個念頭或想法.","img":""},{"name":"修改時間","str":"顯化,不要一直看時間,中斷就重做一次.已經完成.不要懷疑，結束調回時間","img":""},{"name":"清理脈輪","str":"master,command清理[名子]的脈輪用最好最適合他的方式.witness\\n由下逆時針往上轉，再由順時針往下轉，不夠的話請造物主給予更多的光跟愛.","img":""},{"name":"靈性勾子","str":"master,command把[名子]身上的靈性勾子全部送到光中化成光與愛.witness","img":""},{"name":"靈魂碎片","str":"master,command把累世的在[名子]身上不屬於他的靈魂碎片送到光中淨化後送回主人身上,並將屬於他的靈魂碎片送至光中淨化送回他的身上.witness","img":""},{"name":"顯化","str":"master,command現在我生令中已經[內容]加入日期,finish.\\n\\n從共用創造的角度,想像你的人生猶如一個巨大的泡泡,想像像巨人從第七界伸出你的手臂，將手臂伸入泡泡中攪動你的人生,創造改變的能量.","img":""},{"name":"啟動DNA","str":"master, command從今天開始啟動[名子]的青春及活力染色體,finish.讓我看見在松果體主細胞內的啟動過程.\\n\\n詢問造物主,此人是否準備好活化其他的染色體.\\n\\n master,command啟動剩餘的染色體.finish.讓我看見在松果體主細胞內的啟動過程.","img":""},{"name":"修復遣傳基因","str":"master,command此人身上[名子]有瑕疵的遣傳基因已經被療癒.witness.\\n\\n進入個案的空間\\n可能會看見DNA螺旋結構或看見這個四方塊.","img":""},{"name":"轉化老化基因","str":"master,command對[名子]做基因轉換,finish.\\n進入個案的空間,到他的松果體主細胞內.master,command將所有有關老化的遣傳程式[名子]身上抽出、取消,送到您的光中,接著下載年輕 永不老化、細胞永續再生的程式到[名子]現在及未來身體的每一個部份.witness","img":""},{"name":"修補破裂的靈魂","str":"master, 下指令:[萬有的造物主,command改變些人[人名]的破裂靈魂,意識經由頂輪移至個案的空間做見證\\n觀想一顆有裂鏠或破損的光球,先逆時針,再順時針\\n完成後問造物主是否完成\\n感受個案的心(顏色,破洞之類)\\n對事情太淡定(沒有感覺)\\n沒有希望\\n送光中給個案\\n重生:送到光中,再送回來\\n，此刻,再造一個完整的靈魂","img":""},{"name":"游離漂盪的記憶","str":"master, 我下指令將任何對[名子]無用的、不再需要的游離飄蕩的記憶，拔除、取消 送至造物主的光中，以最好最理想的方式，用造物主的愛來代替witness","img":""}]}';
    arrayText = replaceCommonString(arrayText);
    return jsonToList(arrayText);
  }

  replaceCommonString(String str) {
    commonStrings = [
      new Common('master', '一切萬有的造物主'),
      new Common('finish', '.感謝造物主!完成了,完成了,完成了!'),
      new Common('command', '我現在下指令'),
      new Common('witness', '。請讓我見證.感謝造物主!完成了,完成了,完成了!')
    ];
    commonStrings.forEach((element) {
      str = str.replaceAll(element.id, element.str);
    });
    return str;
  }

  jsonToList(obj) {
    var tagObjsJson = jsonDecode(obj)['subject'] as List;
    List<Tag> tagObjs =
        tagObjsJson.map((tagJson) => Tag.fromJson(tagJson)).toList();
    return tagObjs;
  }

  @override
  Widget build(BuildContext context) {
    final list = getList();
    //print(list.length);
    for (var item in list) {
      print(item.str);
    }

    return Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            title: Text("目錄"),
            expandedHeight: 60.0,
            floating: false,
            pinned: true,
            snap: false,
          ),
          new SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: new SliverChildBuilderDelegate(
              (context, index) => new ListTile(
                title: new Text(list[index].name),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    ExtractArgumentsScreen.routeName,
                    arguments: ScreenArguments(
                      list[index].name,
                      list[index].str,
                      list[index].img,
                    ),
                  );
                },
              ),
              childCount: list.length,
            ),
          ),
        ],
      ),
    );
  }

  loadJson() async {
    final obj = await rootBundle.loadString('assets/obj.json');
    //print('obj:' + obj);
    jsonToList(obj);
    return obj;
  }
}

class Common {
  String id;
  String str;
  Common(this.id, this.str);
}

class Tag {
  String name;
  String str;
  String img;
  Tag(this.name, this.str, this.img);

  factory Tag.fromJson(dynamic json) {
    return Tag(
        json['name'] as String, json['str'] as String, json['img'] as String);
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.str}, ${this.img} }';
  }
}

class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;

    if (args.img != "") {
      return Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Center(
          child: Image.asset(args.img),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Center(
          child: Text(args.message),
        ),
      );
    }
  }
}

// A Widget that accepts the necessary arguments via the constructor.
class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;

  const PassArgumentsScreen({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;
  final String img;

  ScreenArguments(this.title, this.message, this.img);
}
