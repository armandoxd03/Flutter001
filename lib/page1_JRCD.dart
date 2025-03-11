import 'package:flutter/material.dart';
import 'homepage_JRCD.dart';

class Page1_JRCD extends StatelessWidget{
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text('Page 1')),
      body: Center(child: Column(children: [
        Text('Welcome to Page 1!',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
           ),
          Image.asset('assets/image2.png',
            width: 400,
            height: 300,
            fit: BoxFit.cover,
            ),
             SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _navigateToHomePage(context),
              child: Text('Go to Home Page'),
            ),
         ],
        ),
      ),);
  }

  void _navigateToHomePage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage_JRCD()),
    );
  }
}