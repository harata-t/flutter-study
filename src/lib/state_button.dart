import 'package:flutter/material.dart';

class StateButton extends StatelessWidget {
  const StateButton({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("タイトル"),
      ),
      body: const Center(
        child: Count(),//CountというClassを使う
      ),
    );
  }
}

class Count extends StatefulWidget {
  const Count({Key? key}) : super(key: key);
  @override
  State<Count> createState() => _CountState();//stateの宣言
}

class _CountState extends State<Count> {
  int _counter = 0;//stateを持つプライベート変数
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _discrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _twiceCounter() {
    setState(() {
      _counter = _counter * 2;
    });
  }

  String tmpText = "";

  String showText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '現在の値:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                _discrementCounter();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              child: const Text(
                "マイナス",
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                _incrementCounter();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              child: const Text(
                "プラス",
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                _twiceCounter();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: const Text(
                "2倍",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a search term',
                    ),
                    onChanged: ((value){
                        setState((){
                            tmpText = value;
                        });
                    })
                ),
                TextButton(
                    onPressed: () {
                        setState((){
                            showText = tmpText;
                        });
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: const Text(
                        "決定",
                        style: TextStyle(color: Colors.white),
                    ),
                ),
                Text(
                    showText
                )
            ]
        )
      ],
    );
  }
}