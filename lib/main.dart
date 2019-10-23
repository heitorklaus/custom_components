import 'package:flutter/material.dart';

import 'class/custom_textformfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Custom TextFormField Component'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var nome = TextEditingController();
  final FocusNode nomeFocusNode = FocusNode();

  var email = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(children: <Widget>[
          TextFormFieldCustom(
              placeholder: 'Type name',
              autovalidate: nome.text.length > 0,
              focusNode: nomeFocusNode,
              controller: nome,
              // obscureText: true,
              prefixIcon: Icon(Icons.camera),
              backgroundColor: Colors.white,
              borderColor: Color(0xFFC5CED7),
              borderColorFocus: Colors.blue,
              borderInput: 2,
              borderRadius: 14,
              paddingAll: 10,
              paddingLeft: 5,
              paddingRight: 5,
              paddingTop: 5,
              paddingBottom: 5),
          TextFormFieldCustom(
            placeholder: 'Type E-mail',
            autovalidate: email.text.length > 0,
            focusNode: emailFocusNode,
            backgroundColor: Colors.white,
            borderColor: Color(0xFFC5CED7),
            borderColorFocus: Colors.blue,
            borderInput: 2,
            borderRadius: 14,
            paddingAll: 10,
            paddingLeft: 5,
            paddingRight: 5,
            paddingTop: 5,
            paddingBottom: 5,
          ),
        ]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
