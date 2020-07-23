import 'package:flutter/material.dart';

myapp() {
  var MyText = Text(
    'Welcome to Amail',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  mypress() {
    print("someone clicked on AMAIL ICON");
  }

  mypress2() {
    print("someone clicked on help....");
  }

  var MyEmailIcon = Icon(
    Icons.email,
    color: Colors.blueGrey,
  );

  var MyQuesIcon = Icon(
    Icons.question_answer,
    color: Colors.blueGrey,
  );

  var MyEmailButton = IconButton(icon: MyEmailIcon, onPressed: mypress);

  var MyQuesButton = IconButton(icon: MyQuesIcon, onPressed: mypress2);

  var url =
      'https://raw.githubusercontent.com/aaditya2801/myflutter/master/20476250_212647645930872_7821959867509320385_n.jpg';

  var MyImage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );

  var myappbar = AppBar(
    title: MyText,
    backgroundColor: Colors.black,
    leading: MyEmailIcon,
    actions: <Widget>[
      MyEmailButton,
      MyQuesButton,
    ],
  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: MyImage,
    backgroundColor: Colors.lightBlueAccent,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
