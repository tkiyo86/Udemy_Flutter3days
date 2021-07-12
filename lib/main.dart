import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titleList = ['楽天', 'Amazon',  'Yahoo!', 'CarConnect', 'Apple'];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('Password logger'),
      ),
      // 表示をひとつひとつ書くやり方
      /*body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text(titleList[0]),
          ),
          // 23, ここに区切り線を引きたい
          Divider(
            thickness: 3,
          ),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text(titleList[1]),
          ),
          Divider(
            thickness: 3,
          ),
          ListTile(
            leading: Icon(Icons.vpn_key_outlined),
            title: Text(titleList[2]),
          ),
          Divider(
            thickness: 3,
          ),
          ListTile(
            leading: Icon(Icons.vpn_key_rounded),
            title: Text(titleList[3]),
          ),
          Divider(
            thickness: 3,
          ),
        ],
      ),*/
     // 24動的に表示する、内容は上と同じ,returnに表示内容を書けばよい
     // ただしreturnは一つの内容しか返せないので「ListTile＋Divider」をセットでWidgetにする
     // Columnを使うとひとまとめにできる,itemCountで表示回数を制御する,titleList[i]にする
     //
     body: ListView.builder(
       itemCount: titleList.length,
       itemBuilder: (BuildContext context, int i){
         return Column(
             children: [
               ListTile(
                 leading: Icon(Icons.vpn_key),
                 title: Text(titleList[i]),
               ),
               // 23, ここに区切り線を引きたい
               Divider(
               thickness: 3,
               ),
            ],
         );
       },
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: _incrementCounter,
       tooltip: 'Increment',
       child: Icon(Icons.add),
     ), // This trailing comma makes auto-formatting nicer for build methods.
   );
  }
}

// 18.TODOリストを作成する
//todo ホーム画面のタイトル変更、19
//todo リストを表示,21
//todo リスト間に区切り線を表示,23
//todo リスト表示を動的に,24 リストの増減に対応
//todo フロートアクションボタンをタップ時に、リストを一つ追加表示
//todo 新しい画面を作成し、リストをタップしたときに遷移
//todo 新しい画面のレイアウト作成
//todo 新しい画面にリストからデータを引き継ぐ
