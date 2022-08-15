import 'package:flutter/material.dart';

class YoutubePage extends StatelessWidget {
  YoutubePage({Key? key}) : super(key: key);
  final items = List<String>.generate(10, (i) => "Item $i");
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("キヨ。",
            style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () => {},
                color: Colors.black
            ),
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => {},
                color: Colors.black
            ),
            ],
        ),
        body: Center(
            child:Column(
                children:[
                    Row(
                        children:[
                            SizedBox(
                                width: 120,
                                height: 120,
                                child: Image.network('https://pbs.twimg.com/media/CcyU3zaVAAAMSAI.jpg'),
                            ),
                            Column(
                                children:[
                                    const Text("キヨ。"),
                                    TextButton(
                                        child: Text("チャンネル登録"),
                                        onPressed: () => {},
                                    )
                                ]
                            )
                        ]
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget>[
                            Container(
                                height: 50,
                                width: 150,
                                color: Colors.grey[300],
                                child:Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:[
                                        const Text('アップロード済み'),
                                        Icon(
                                            Icons.expand_more, //設定したいアイコンのID
                                            //color: Colors.pink, // 色
                                            size: 20, //サイズ
                                        ),
                                    ]
                                ),
                            ),
                            Container(
                                height: 50,
                                width: 150,
                                color: Colors.grey[300],
                                child:Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:[
                                        const Text('追加日（新しい順）'),
                                        Icon(
                                            Icons.expand_more, //設定したいアイコンのID
                                            //color: Colors.pink, // 色
                                            size: 20, //サイズ
                                        ),
                                    ]
                                ),
                            )
                        ]
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                                return ListTile(
                                    leading: Image.network(
                                        'https://pbs.twimg.com/media/CcyU3zaVAAAMSAI.jpg',
                                        height: 75,
                                        width: 75,
                                        fit: BoxFit.fitHeight,
                                    ),
                                    title: Column(
                                        children: <Widget>[
                                            Text(
                                                '「キヨの声に似すぎている」と噂のGTAに出てくる日本人の声を本人が聞く',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                ),
                                            ),
                                            Row(
                                                children: <Widget>[
                                                    Text(
                                                        '117万回視聴・',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color: Colors.black.withOpacity(0.5),
                                                        ),
                                                    ),
                                                    Text(
                                                        '21時間前',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color: Colors.black.withOpacity(0.5),
                                                        ),
                                                    ),
                                                ]
                                            )
                                        ]
                                    ),
                                    trailing: Icon(Icons.more_vert),
                                );
                            },
                        ),
                    )
                ]
            )
        )
    );
  }
}