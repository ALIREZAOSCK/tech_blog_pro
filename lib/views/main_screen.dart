// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tech_blog_pro/colors.dart';
import 'package:tech_blog_pro/gen/assets.gen.dart';
import 'package:tech_blog_pro/models/data_models.dart';
import 'package:tech_blog_pro/strings.dart';
import 'package:tech_blog_pro/views/profile_screen.dart';

import '../models/fake_data.dart';
import 'home_screen.dart';

void main() {}

class MainScreen extends StatefulWidget {
  
  @override
  State<MainScreen> createState() => _MainScreenState();
}


final GlobalKey<ScaffoldState> _key = GlobalKey();
class _MainScreenState extends State<MainScreen> {
  int selectedPageIndex = 0; //callbacked

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 15;


    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
          
          backgroundColor: SolidColors.scaffoldBg,
          child: Padding(
            padding:  EdgeInsets.only(right: bodyMargin, left: bodyMargin),
            child: ListView(
              children: [
                DrawerHeader(child: 
                Image.asset(Assets.images.tech.path, scale: 3,)
                ),
                ListTile(
                  title:Text('پروفایل کاربری',
                   style: textTheme.headline4,) 
                   ,),
                const Divider(
                  color: SolidColors.dividerColor,
                ),
                ListTile(
                  title:Text('درباره تک‌بلاگ ',
                   style: textTheme.headline4,) 
                   ,),
                const Divider(
                  color: SolidColors.dividerColor,
                ),
                ListTile(
                  title:Text(' اشتراک گذاری تک بلاگ',
                   style: textTheme.headline4,) 
                   ,),
                const Divider(
                  color: SolidColors.dividerColor,
                ),
                ListTile(
                  title:Text('تک‌بلاگ در گیت هاب',
                   style: textTheme.headline4,) 
                   ,),
                const Divider(
                  color: SolidColors.dividerColor,
                ),
              ],
            ),
          )
        )
        ,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: SolidColors.scaffoldBg,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  _key.currentState!.openDrawer();
                },
                child: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              Image.asset(
                Assets.images.tech.path,
                height: size.height / 13.6,
              ),
               const Icon(
                Icons.search,
                color: Colors.black,
                           )
            ],
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
                child: IndexedStack(
              index: selectedPageIndex,
              children: [
                homeScreen(
                    size: size, textTheme: textTheme, bodyMargin: bodyMargin),
                profileScreen(
                    size: size, textTheme: textTheme, bodyMargin: bodyMargin)
              ],
            )),
            bottomNavigation(
              size: size,
              bodyMargin: bodyMargin,
              changeScreen: (int value) {
                setState(() {
                  selectedPageIndex = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class bottomNavigation extends StatelessWidget {
  const bottomNavigation({
    super.key,
    required this.size,
    required this.bodyMargin,
    required this.changeScreen,
  });

  final Size size;
  final double bodyMargin;
  final Function(int) changeScreen; //callbacked
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 8,
      left: 0,
      right: 0,
      child: Container(
        height: size.height / 8,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: GradientColors.bottomNavBackground,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
          child: Container(
            height: size.height / 20,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                gradient: LinearGradient(
                    colors: GradientColors.bottomNav,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: (() => changeScreen(0)), //callbacked
                    icon: Image.asset(Assets.icons.icon.path)),
                IconButton(
                    onPressed: () {}, icon: Image.asset(Assets.icons.w.path)),
                IconButton(
                    onPressed: (() => changeScreen(1)),
                    icon: Image.asset(Assets.icons.user.path)), //callbacked
              ],
            ),
          ),
        ),
      ),
    );
  }
}
