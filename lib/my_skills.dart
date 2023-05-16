import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MySkills extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[700],
          title: Text('مهاراتي الخاصة',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: SafeArea(top: true, bottom: true, child: Skills()));
  }
}

class Skills extends StatefulWidget {
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  String para1 = 'هنا أعرض قائمة لمجموعة البرامج والتقنيات التي أتقنها',
         para2 = 'إضغط على أيقونة البرنامج لعرض شرح بسيط عنه';
  List<String> mySkills = [
    '',
    'photoshop.jpg',
    'Illustrator.jpg',
    'adobe_xd.png',
    'excel.png',
    'word.png',
    'powerpoint.png',
    'firebase.png',
    'flutter.png',
  ];

  List<String> mySkillsText = [
    '',
    'Photoshop',
    'Illustrator',
    'Adobe Xd',
    'Excel',
    'Word',
    'Powerpoint',
    'Firebase',
    'Flutter'
  ];

  List<String> mySkillsContent = [
    '',
    'برنامج لتعديل الصور وتصميم الإعلانات والبطاقات التجارية وغيرها',
    'برنامج لتصميم الشعارات الإحترافية ورسم الشخصيات الكرتونية وعمل تصاميم سوشال ميديا',
    'برنامج متخصص في تصميم واجهات المستخدم مثل المواقع الإلكترونية وتطبيقات الهواتف الذكية',
    'برنامج جداول إحصائية متخصص في العمليات الحسابية ومعالجة البيانات الرقمية وتحليلها',
    'برنامج معالجة النصوص يستخدم لكتابة النصوص وتنسيقها وعمل مستندات ورقية ',
    'برنامج العروض التقديمية يقدم لك مجموعة من الأشكال والتصاميم الجاهزة لإنجاز عملك بكفاءة ',
    'قاعدة بيانات من شركة قوقل يتم إستخدامها لتخزين بيانات المستخدم على منصة سحابية ومعالجتها وعرضها عند طلبها',
    'تقنية من شركة قوقل يتم إستخدامها لتصميم وبرمجة تطبيقات الهواتف التي تعمل على نظام التشغيل Android و IOS',
  ];

  Widget build(BuildContext context) {
    return GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 1,
        children: List.generate(
          mySkills.length, (index) {
          return  Wrap( children: [
          (index == 0) ?  Padding(
                padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: Container(
                    child: Text(para1 + '\n\n' + para2,
                    textAlign: TextAlign.right,
                    style: TextStyle( fontSize: 17, fontWeight: FontWeight.bold ), ),
                  ),
                )
              ) :  Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Container(
                    height: 200,
                    width: 200,
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  backgroundColor:  Colors.teal[700],
                                  title: Text(
                                    mySkillsText[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  content: Text(mySkillsContent[index],
                                      textAlign: TextAlign.right,
                                      style: TextStyle(color: Colors.white)),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK',
                                            style:  TextStyle(color: Colors.white)))
                                  ],
                                ));
                      },
                      child: Image.asset(
                        'images/${mySkills[index]}',
                      ),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                    child: Text(mySkillsText[index],
                        style: TextStyle(fontSize: 24))),
              ),
            ),
          ]);
        }));
  }  }