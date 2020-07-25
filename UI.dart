import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

myapp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.black);
  var x = Text("Happiest Soul",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          fontSize: 25));
  press() {
    var y = Fluttertoast.showToast(
        msg: "Please enter your Email.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
    print("hi");
    return y;
  }

  var url =
      'https://raw.githubusercontent.com/kartikeya532001/Flutter/master/Happiest%20soul%20logo.jpeg';
  var Logo = Image.network(url);

  var MyEmailIcon = Icon(Icons.email);

  var MyIconButton = IconButton(icon: MyEmailIcon, onPressed: press);

  var MyAppBar = AppBar(
      backgroundColor: Colors.blueGrey,
      title: x,
      leading: Logo,
      actions: <Widget>[
        MyIconButton,
      ]);
  body() {
    var BodyLayout = Container(
      child: Column(
        children: <Widget>[
          Text("Our company provides best services at your door step.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 25)),
          Image.network(
            "https://raw.githubusercontent.com/kartikeya532001/Flutter/master/Leaflet.jpg",
            width: 350,
            height: 400,
            //fit: BoxFit.fill,
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 5,
            color: Colors.white,
          )),
    );

    return BodyLayout;
  }

  var MyBody = body();
  var MyHome = Scaffold(
    appBar: MyAppBar,
    body: MyBody,
  );
  var Design = MaterialApp(
    home: MyHome,
    debugShowCheckedModeBanner: false,
  );

  return Design;
}


