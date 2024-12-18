import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constants/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        body: Container(
          width: deviceWidth,
          height: deviceHeight / 3,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("lib/assets/images/header.jpg"),
            fit: BoxFit.cover)
          ),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "22 Ağustos 2024",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "My ToDo List ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
