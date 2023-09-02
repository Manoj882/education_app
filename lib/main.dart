import 'package:education_app/core/res/colors.dart';
import 'package:education_app/core/res/fonts.dart';
import 'package:education_app/src/on_boarding/presentation/views/on_boarding_screen.dart';
import 'package:flutter/material.dart';

import 'core/services/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: Fonts.poppins,
        // primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSwatch(accentColor: ColorsManager.primaryColor),
      ),
      onGenerateRoute: generateRoute,

      
    );
  }
}

