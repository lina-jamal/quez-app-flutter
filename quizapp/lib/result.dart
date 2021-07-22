import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuize;

  const Result(this.resetQuize);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          'Done..!',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        // FlatButton(onPressqed: onPressed, child: child)

        ElevatedButton(
            child: Text('Restart the Quiz', style: TextStyle(fontSize: 22)),
            onPressed: resetQuize)
      ],
    ));
  }
}
