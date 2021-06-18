import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:i_am_rich/networking.dart';

void main() {
  runApp(MaterialApp(home: IAmRich()));
}

class IAmRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade600,
        title: Text(
          'I am Rich!',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'This is a picture \nof a diamond!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Image.asset(
              'assets/diamond.png',
              width: MediaQuery.of(context).size.width * 0.7,
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('Shine bright like a DIAMOND!'),
              TyperAnimatedText('Shine bright like a diamond'),
              TyperAnimatedText('Find light in the beautiful sea'),
              TyperAnimatedText('I choose to be happy'),
              TyperAnimatedText('You and I, you and I'),
            ],
            repeatForever: true,
          ),
          TextButton.icon(
            onPressed: () async {
              var data = await NetworkHelper().getData();
              print(data['title']);
            },
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: Text(
              'Get Data',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton.icon(
            onPressed: () async {
              var data = await NetworkHelper().postData('6123456789', 'pass123',
                  'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2MjM5OTY0MTN9.kILUrXIweexmAX2IjlEuxyBmH2teKY5VbiuCVMaAun8');
              print(data);
            },
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: Text(
              'Post Data',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
