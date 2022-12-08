import 'package:fashion_app/screens/welcome/welcome_screen.dart';
import 'package:fashion_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constriants) {
        SizeConfig().init(constriants);
        
        return MaterialApp(
          title: 'Fashion App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: kPrimaryColor,
            textTheme: GoogleFonts.imprimaTextTheme(Theme.of(context).textTheme),
            scaffoldBackgroundColor: kWhite,
          ),
          home: const WelcomeScreen(),
        );
      }
    );
  }
}