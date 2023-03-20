// ignore_for_file: deprecated_member_use
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:tech_blog_pro/colors.dart';
import 'package:tech_blog_pro/gen/assets.gen.dart';
import 'package:tech_blog_pro/views/main_screen.dart';
import 'package:tech_blog_pro/views/register_intro.dart';
import 'package:tech_blog_pro/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // Persian
      ],
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(width: 2)),
            filled: true
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states){
                    if (states.contains(MaterialState.pressed)) {
                      return SolidColors.seeMore;
                    }
                    return SolidColors.primaryColor;
                  }),
                 textStyle: MaterialStateProperty.resolveWith((states){
                  if (states.contains(MaterialState.pressed)) {
                    return textTheme.headline1;
                    
                  }
                  return textTheme.subtitle1;
                 }) 
                ), ),



      fontFamily: 'dana',
          textTheme: const TextTheme(
              displayLarge: TextStyle(
              fontFamily: 'dana',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: SolidColors.posterTitle),

          titleMedium: TextStyle(
              fontFamily: 'dana',
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: SolidColors.posterSubTitle),

          bodyLarge: TextStyle(
              fontFamily: 'dana',
              fontSize: 13,
              fontWeight: FontWeight.w300),

          displayMedium: TextStyle(
              fontFamily: 'dana',
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w300),

          displaySmall: TextStyle(
              fontFamily: 'dana',
              fontSize: 14,
              color: SolidColors.seeMore,
              fontWeight: FontWeight.w700),

          headlineMedium: TextStyle(
              fontFamily: 'dana',
              fontSize: 14,
              color: Color.fromARGB(255, 70, 70, 70),
              fontWeight: FontWeight.w700),
              
          headlineSmall: TextStyle(
              fontFamily: 'dana',
              fontSize: 14,
              color: SolidColors.hintText,
              fontWeight: FontWeight.w700)
        
          )),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Register_Intro(),
      
    ));

  }
}

