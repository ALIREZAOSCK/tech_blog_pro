// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import '../gen/assets.gen.dart';
import '../models/fake_data.dart';

class techdivider extends StatelessWidget {
  const techdivider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: SolidColors.dividerColor,
      indent: size.width/6,
      endIndent: size.width/6,
    );
  }
}

class MainTags extends StatelessWidget {
  const MainTags({
    super.key,
    required this.textTheme,
    required this.index
  });

  final TextTheme textTheme;
  final index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(24)),
          gradient: LinearGradient(
              colors: GradientColors.tags,
              begin: Alignment.centerRight,
              end: Alignment.centerLeft)),
      child: Padding(
        padding:
            const EdgeInsets.fromLTRB(16, 8, 8, 8),
        child: Row(
          children: [
            ImageIcon(
              AssetImage(Assets.icons.hashtag.path),
              size: 16,
              color: SolidColors.posterTitle,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(tagList[index].title,
                style: textTheme.headline2)
          ],
        ),
      ),
    );
  }
}