// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_blog_pro/components/colors.dart';
import 'package:tech_blog_pro/gen/assets.gen.dart';
import 'package:tech_blog_pro/models/fake_data.dart';
import 'package:tech_blog_pro/components/my_component.dart';
import 'package:tech_blog_pro/components/strings.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({
    super.key,
    required this.size,
    required this.textTheme,
    required this.bodyMargin,
  });

  final Size size;
  final TextTheme textTheme;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset(Assets.images.profile.path, height: 100),
              const SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.icons.blurepen.path,
                    height: 28,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    MyStrings.imageProfileEdit,
                    style: textTheme.displaySmall,
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Text(
                'فاطمه امیری',
                style: textTheme.headlineMedium,
              ),
              Text('fatemeamiri@gmail.com',
               style: textTheme.headlineMedium),
              const SizedBox(height: 40),
              techdivider(size: size),
              InkWell(
                onTap: () {},
                splashColor: SolidColors.primaryColor,
                child: SizedBox(
                  height: 45,
                  child: Center(
                    child: Text(
                      MyStrings.myFavBlog,
                      style: textTheme.headline4,
                    ),
                  ),
                ),
              ),
              techdivider(size: size),
              InkWell(
                onTap: () {},
                splashColor: SolidColors.primaryColor,
                child: SizedBox(
                  height: 45,
                  child: Center(
                    child: Text(
                      MyStrings.myFavPodcast,
                      style: textTheme.headline4,
                    ),
                  ),
                ),
              ),
              techdivider(size: size),
              InkWell(
                onTap: () {},
                splashColor: SolidColors.primaryColor,
                child: SizedBox(
                  height: 45,
                  child: Center(
                    child: Text(
                      MyStrings.logOut,
                      style: textTheme.headline4,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60,)
            ],
          )
          ),
    );
  }
}
