import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('تواصل معي',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Contact(),
    );
  }
}

class Contact extends StatelessWidget {
  final String para1 = 'يسرني التواصل معك من خلال البيانات ',
      para2 = 'الموضحة على الشاشة التالية';
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 50, right: 15, bottom: 50),
            child: Container(
              width: double.infinity,
              child: Text(
                para1 + '\n\n' + para2,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 22),
              ),
            )),
        Container(
            margin: const EdgeInsets.all(20),
            child: GestureDetector(
                onTap: () => showTVScreen(context),
                child: Hero(
                    tag: 'tv_screen',
                    child: Image.asset('images/screen.png')))),
      ],
    );
  }

  showTVScreen(context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Scaffold(
                body: Center(
              child: Hero(
                  tag: 'tv_screen', 
                  child: Image.asset('images/screen.png')
                  ),
            ) )
            ) );
  } }