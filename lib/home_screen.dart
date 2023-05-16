import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(31, 39, 77, 1),
          title: Text('الصفحة الرئيسية',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  width: double.infinity,
                  height: 190,
                  child: Image.asset('images/profile.png', fit: BoxFit.cover)),

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  child: Text('أحمد أبوبكر أحمد الحاج',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(38, 48, 92, 1))),
                ),
                Icon(Icons.person, size: 40, color: Color.fromRGBO(38, 48, 92, 1))
              ]),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children :[
                 Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 30),
                    height: 7,
                    width: 307,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(38, 48, 92, 1))),
                ]
              ),
              
              Center(
                child: Wrap(
                  spacing: 60, 
                  runSpacing: 15,
                  children: [
        
                InkWell (
                  onTap: () {
                       Navigator.pushNamed(context, 'my_cv');
                  },
                 child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 60,
                      child:  Icon(Icons.library_books, size: 40, color: Colors.white)
                  )  ),
        
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'my_works');
                    },
                    child: CircleAvatar(
                        backgroundColor: Colors.cyan,
                        radius: 60,
                        child: Icon(Icons.photo, size: 40, color: Colors.white)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'سيرتي الذاتية',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )  ),

                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      'أعمالي الفنية',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan
                          ),
                    )  ),

                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'contact_me');
                    },
                    child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 60,
                        child: Icon(Icons.contact_mail,
                            size: 40, color: Colors.white)),
                  ),

                  
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'my_skills');
                    },
                    child: CircleAvatar(
                        backgroundColor: Colors.teal[700],
                        radius: 60,
                        child: Icon(Icons.verified_user,
                            size: 40, color: Colors.white)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'تواصل معي',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      'مهاراتي الخاصة',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[700] ),
                    )  ),
                ] ),
              ),
            ],
          )  );
  } }