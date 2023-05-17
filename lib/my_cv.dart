import 'package:flutter/material.dart';

class MYCV extends StatelessWidget {
  final String para1 = '''
مصمم جرافيك، مصمم واجهات ومطور تطبيقات موبايل
أسعى دوماً إلى تطوير نفسي باستمرار بدون كلل أو ملل
شعاري في الحياة : (كن عالماً كن مبدعاً ولا تكن صفراً)
''';

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('سيرتي الذاتية',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: Text('أحمد أبوبكر أحمد الحاج الحسن',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              ),
              Icon(Icons.person,
                  size: 40, color: Colors.blue)
            ]),
            SizedBox(height: 30),
            Container(
                child: Text(
              para1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )),
            SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 110),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 3)),
              height: 230,
              child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset('images/cv.jpg', fit: BoxFit.cover)),
            ),

            SizedBox(height: 20),

            Center(
              child: MaterialButton(
                  shape: const StadiumBorder(),
                  textColor: Colors.white,
                  color: Colors.blue,
                  height: 50,
                  minWidth: 150,
                  child: Wrap(children: [
                    Container(
                        margin: const EdgeInsets.only(top: 10, right: 5),
                        child: Icon(Icons.download,
                            size: 25, color: Colors.white)),
                    Text('تحميل',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ]),
                  onPressed: () {
                    Navigator.pushNamed(context, 'cv_screen');
                  }),
            ),
          ],
        ));
  }
}