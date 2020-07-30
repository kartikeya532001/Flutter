import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
//import 'package:fluttertoast/fluttertoast.dart';

press() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.grey);

  myprint() {
    print('Vimal Daga  !! ');
  }

  /*myt() {
    Fluttertoast.showToast(
        msg: "This is Vimal !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        fontSize: 16.0);
  }*/
  var url =
      'https://raw.githubusercontent.com/kartikeya532001/Flutter/master/Happiest%20soul%20logo.jpeg';

  var Logo = Image.network(url);

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade200,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(50),
          //padding: EdgeInsets.all(100),
          //padding: EdgeInsets.only(left: 70),
          alignment: Alignment.center,
          width: 350,
          height: 200,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Kartikeya Khanna',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text('  kartikeya532001@gmail.com',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: myprint,
          //onDoubleTap: myprint,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/kartikeya532001/Flutter/master/Kartikeya.jpeg'),
                fit: BoxFit.fill,
              ),
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.blueGrey,
                width: 3,
              ),
            ),
            // margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            // color: Colors.blue,
            // child: Text('second'),
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Happiest Soul",
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 25)),
        leading: Logo,
        actions: <Widget>[
          // IconButton(icon: Icon(Icons.add_a_photo), onPressed: myt),
          IconButton(icon: Icon(Icons.account_circle), onPressed: null)
        ],
      ),
      body: mybody,
    ),
  );
}
