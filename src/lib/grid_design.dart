import 'package:flutter/material.dart';

class GridDesign extends StatelessWidget {
  const GridDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // children: GridView.count(
          //   crossAxisCount: 2,
          //   children: List.generate(4, (index) {
          //     return Center(
          //       child: Text(
          //         'Item $index',
          //         style: Theme.of(context).textTheme.headline5,
          //       ),
          //     );
          //   }),
          // ),
        ),
      ),
    );
  }
}