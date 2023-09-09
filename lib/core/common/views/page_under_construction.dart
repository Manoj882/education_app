import 'package:education_app/core/res/media_res.dart';
import 'package:education_app/core/widgets/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageUnderConstruction extends StatelessWidget {
  const PageUnderConstruction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        image: MediaRes.casualMeditationScience,
        child: Center(child: Image.asset(MediaRes.casualMeditationScience),),
        
      ),
    );
  }
}
