import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("nextpage"),
      ),
      body: Container(
        color:Colors.grey,
        child:Column(
          children:<Widget>[
            ElevatedButton(
              onPressed: () {
              Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ]
        )
      )		
    );
}
}