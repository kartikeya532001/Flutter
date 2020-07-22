import 'package:flutter/material.dart';

myapp() {
  var x = Text(
    "Happiest Soul",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );
  press() {
    var y = Text("Enter your email");
    print("hi");
    return y;
  }

  var url =
      "https://raw.githubusercontent.com/kartikeya532001/Flutter/master/Happiest%20soul%20logo.jpeg";
  var Logo = Image.network(url);

  var MyEmailIcon = Icon(Icons.email);

  var MyIconButton = IconButton(icon: MyEmailIcon, onPressed: press);

  var MyAppBar = AppBar(
      title: x,
      backgroundColor: Colors.black,
      leading: Logo,
      actions: <Widget>[
        MyIconButton,
      ]);
  body() {
    var z = Text(
      "Our company provide best services at your door step",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );

    return z;
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
