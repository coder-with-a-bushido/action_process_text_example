import 'package:flutter/material.dart';
import 'package:action_process_text/action_process_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SelectedTextViewPage(),
    );
  }
}

class SelectedTextViewPage extends StatefulWidget {
  @override
  _SelectedTextViewPageState createState() => _SelectedTextViewPageState();
}

class _SelectedTextViewPageState extends State<SelectedTextViewPage> {
  _SelectedTextViewPageState() {
    initActionProcessText();
  }

  Future<void> initActionProcessText() async {
    inputText = await ActionProcessText.getInputText;
    setState(() {});
  }

  String inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Selected Text: $inputText',
        ),
      ),
    );
  }
}
