import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: IAmRich()));
}

class IAmRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          'I am Rich!',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 180.0,
            child: Image.asset('assets/diamond.png'),
          ),
          SizedBox(
            height: 35.0,
          ),
          Center(
            child: Text(
              'This is a picture of a diamond!',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
