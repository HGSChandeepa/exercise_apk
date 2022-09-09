import 'package:exercise_app/controller/onbordingController.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class OnbordingPage extends StatelessWidget {
  final controller = OnbordingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: controller.onbordingPages.length,
        itemBuilder: ((context, index) {
          return SafeArea(
            child: Column(
              children: [
                Text(controller.onbordingPages[index].headigText),
                Image.asset(controller.onbordingPages[index].imageAsset),
                Text(controller.onbordingPages[index].descriptionText),
              ],
            ),
          );
        }),
      ),
    );
  }
}
