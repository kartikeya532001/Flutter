import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  @override
  _MyloginState createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
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
            Icon(Icons.account_circle),
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
                    /*borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),*/
                  ),
                  margin: EdgeInsets.all(50),
                  alignment: Alignment.center,
                  width: 500,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text("   "),
                      TextField(
                        autocorrect: false,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: "Enter your id",
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      Text(" "),
                      TextField(
                        autocorrect: false,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: "Enter your Password",
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      Text(""),
                      RaisedButton(
                        onPressed: () => Navigator.pushNamed(context, "/home"),
                        child: Text("Login"),
                      ),
                      Row(
                        children: <Widget>[
                          Text("  Don't have a account?  ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                          RaisedButton(
                            onPressed: () => print("yes"),
                            child: Text("Sign up."),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
