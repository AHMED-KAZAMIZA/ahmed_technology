import 'package:flutter/material.dart';

class MyWorks extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text('أعمالي الفنية',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only( top: 50 ),
                child: const Text('أعمالي الفنية'),
              ),
            )
          ],
        )
        );
  }  }