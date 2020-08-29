import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Happiest soul",
          ),
          leading: Image.network(
              "https://raw.githubusercontent.com/kartikeya532001/Flutter/master/Happiest%20Soul/Images/Happiest%20soul%20logo.jpeg"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () => Navigator.pushNamed(context, "/profile")),
          ],
          backgroundColor: Colors.black,
        ),
        body: Container(
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
                "https://raw.githubusercontent.com/kartikeya532001/Flutter/master/Happiest%20Soul/Images/Leaflet.jpg",
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
        ));
  }
}
