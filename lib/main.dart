import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Widget'),
        ),
        body: Center(
          child: WelcomeWidget(),
        ),
      ),
    );
  }
}

class WelcomeWidget extends StatefulWidget {
  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  String welcomeMessage = "Selamat datang di politeknik sampit";

  void changeMessage() {
    setState(() {
      welcomeMessage = "Terima kasih atas kunjunganya!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          welcomeMessage,
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: changeMessage,
          child: Text('Change Message'),
        ),
      ],
    );
  }
}
