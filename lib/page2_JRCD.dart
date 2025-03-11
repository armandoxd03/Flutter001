import 'package:flutter/material.dart';
import 'homepage_JRCD.dart';

class Page2_JRCD extends StatelessWidget{
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text('Page 2')),
      body: Center(child: Column(children: [
        Text('Welcome to Page 2!',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
           ),
          Image.asset('assets/image3.png',
            width: 250,
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