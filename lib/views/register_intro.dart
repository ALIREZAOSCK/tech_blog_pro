// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_blog_pro/components/colors.dart';
import 'package:tech_blog_pro/gen/assets.gen.dart';
import 'package:tech_blog_pro/components/strings.dart';
import 'package:tech_blog_pro/views/my_cats.dart';

class Register_Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset(
            Assets.images.techbot.path,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: MyStrings.welcom, style: textTheme.headline4)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: ElevatedButton(
              onPressed: () {
                _showEmailBottomSheet(context, size, textTheme);
              },
              child:  Text('بزن بریم',style: textTheme.displayMedium,),
            ),
          )
        ]),
      ),
    ));
  }

  Future<dynamic> _showEmailBottomSheet(BuildContext context, Size size, TextTheme textTheme) {
    return showModalBottomSheet(
                isScrollControlled: true,
                
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return Padding(
                    padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                      height: size.height / 2,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(MyStrings.insertYourEmail,
                          style: textTheme.headline4,),
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: 'techblog@gmail.com',
                                hintStyle: textTheme.headline5
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed:() {
                              Navigator.pop(context);
                              _activatedCodeBottomSheet(context, size, textTheme);
                            },
                            child:  Text('ادامه',style: textTheme.displayMedium,)
                            )
                        ],
                      ),
                    ),
                  );
                },
              );
  }

  Future<dynamic> _activatedCodeBottomSheet(BuildContext context, Size size, TextTheme textTheme) {
    return showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                               builder: (context) {
                                 return Container(
                                  
                                  height: size.height/2,
                                  decoration: const BoxDecoration(
                                    borderRadius:BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)
                                    ),
                                     color: Colors.white,),
                                     child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                         Text(MyStrings.activateCode,
                                         style: textTheme.headline4,),
                                         Padding(
                                           padding: const EdgeInsets.all(24),
                                           child: TextField(
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                              hintText: '******',
                                              hintStyle: textTheme.headline5
                                            ),
                                            ),
                                         ),
                                         ElevatedButton(
                                          onPressed: (){
                                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyCats()));
                                          }, 
                                          child:Text('ادامه', style: textTheme.displayMedium,) )
                                      ],
                                     ),
                                 );
                               },
                               );
  }
}
