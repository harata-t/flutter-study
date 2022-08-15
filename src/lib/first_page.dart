import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("First"),
            IconButton(
              onPressed: () {
              Navigator.pushNamed(context, "/second");
              },
              icon: const Icon(Icons.arrow_forward),
            ),
            ElevatedButton(
              onPressed: () {
              Navigator.pushNamed(context, "/state_button");
              },
              child: const Text('count page'),
            ),
            ElevatedButton(
              onPressed: () {
              Navigator.pushNamed(context, "/youtube");
              },
              child: const Text('youtube page'),
            ),
          ],
        ),
      ),
    );
  }
}