import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    press() {
      var y = Fluttertoast.showToast(
          msg: "Kartikeya Khanna",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
      print("hi");
      return y;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Happiest soul",
          ),
          leading: Image.network(
              "https://raw.githubusercontent.com/kartikeya532001/Flutter/master/Happiest%20Soul/Images/Happiest%20soul%20logo.jpeg"),
          actions: <Widget>[
            Icon(Icons.email),
          ],
          backgroundColor: Colors.black,
        ),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://raw.githubusercontent.com/kartikeya532001/Flutter/master/Happiest%20Soul/Images/Background%20Image1.jpg"),
            fit: BoxFit.fill,
          )),
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  /* border: Border.all(
                    color: Colors.grey,
                    width: 3,
                  ),*/
                ),
                margin: EdgeInsets.all(50),
                alignment: Alignment.center,
                width: 350,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Kartikeya Khanna',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(""),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.email),
                        Text('  kartikeya532001@gmail.com',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: press,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/kartikeya532001/Flutter/master/Happiest%20Soul/Images/Kartikeya.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.blueGrey,
                      width: 3,
                    ),
                  ),
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
        ));
  }
}
