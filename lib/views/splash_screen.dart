import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tech_blog_pro/components/colors.dart';
import 'package:tech_blog_pro/gen/assets.gen.dart';
import 'package:tech_blog_pro/views/main_screen.dart';

void main(){

}
class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    Future.delayed(Duration(seconds: 3)).then((value){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainScreen()));
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.tech.path,
              width: 120,
              ),
              const SizedBox(height: 32,),

              const SpinKitFadingCube(
              color: SolidColors.primaryColor,
              size: 32.0,
              
              )
            ],
          ),
        ),
      ),
    );
  }
}