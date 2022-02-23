import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
  theme: 
    ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override

  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),()=> print("BEM VINDOS!!!"));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.orangeAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.purpleAccent,
                          size: 50.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text(
                          "Aplicativo TCC",style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
                        )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      color: Colors.purpleAccent,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                  ),
                  Text("--- O app de compras mais top das galáxias ---", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
                ],
              )
              )
          ],)
        ],
      ),
    );
  }
}