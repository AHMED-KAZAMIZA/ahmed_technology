import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class CVScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhotoView(
          imageProvider: const AssetImage('images/cv.jpg'),
          enableRotation: false,

          ))
    );
  }
}