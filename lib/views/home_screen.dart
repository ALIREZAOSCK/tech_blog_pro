

// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_blog_pro/colors.dart';
import 'package:tech_blog_pro/gen/assets.gen.dart';
import 'package:tech_blog_pro/models/fake_data.dart';
import 'package:tech_blog_pro/strings.dart';

import '../my_component.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({
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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            homePagePoster(size: size, textTheme: textTheme),
            const SizedBox(
              height: 16,
            ),
            //tags
            homePageTags(bodyMargin: bodyMargin, textTheme: textTheme),
            //bluepen and string
            const SizedBox(
              height: 32,
            ),
            //see more
            seeMoreBlog(bodyMargin: bodyMargin),
            const SizedBox(
              height: 16,
            ),
            //blog list
            homePageBlogList(size: size, bodyMargin: bodyMargin, textTheme: textTheme),
            const SizedBox(
              height: 32,
            ),
            //see more podcasts
            seeMorePodcast(bodyMargin: bodyMargin),
            const SizedBox(
              height: 16,
            ),
            //podcasts
            homePagePodcastList(size: size, bodyMargin: bodyMargin, textTheme: textTheme),
            const SizedBox(height: 90,)                 
          ],
        ),
      ),
    );
  }
}

class homePagePodcastList extends StatelessWidget {
  const homePagePodcastList({
    super.key,
    required this.size,
    required this.bodyMargin,
    required this.textTheme,
  });

  final Size size;
  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: blogList.getRange(0, 5).length,
        itemBuilder: (context, index) {
          //blog item
          return Padding(
            padding: EdgeInsets.only(
                right: index == 0 ? bodyMargin : 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: size.height / 5.3,
                    width: size.width / 2.5,
                    child: Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(
                                        Radius.circular(16)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        blogList[index]
                                            .imageUrl),
                                    fit: BoxFit.cover)),
                            foregroundDecoration:
                                const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(16)),
                              gradient: LinearGradient(
                                  colors:
                                      GradientColors.blogPost,
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter),
                            )),
                        //blog writer and views
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 8,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                blogList[index].writer,
                                style: textTheme.subtitle1,
                              ),
                              Text(blogList[index].views,
                                  style: textTheme.subtitle1),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //blog title
                SizedBox(
                    width: size.width / 2.4,
                    child: Text(
                      blogList[index].title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ))
                
              ],
            ),
          );
        },
      ),
    );
  }
}

class seeMorePodcast extends StatelessWidget {
  const seeMorePodcast({
    super.key,
    required this.bodyMargin,
  });

  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodyMargin),
      child: Row(
        children: [
          ImageIcon(AssetImage(Assets.icons.microphone.path),
              color: SolidColors.seeMore),
          const SizedBox(width: 8),
          Text(
            MyStrings.viewHotestPodCasts,
            style: Theme.of(context).textTheme.displaySmall,
          )
        ],
      ),
    );
  }
}

class homePageBlogList extends StatelessWidget {
  const homePageBlogList({
    super.key,
    required this.size,
    required this.bodyMargin,
    required this.textTheme,
  });

  final Size size;
  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: blogList.getRange(0, 5).length,
        itemBuilder: (context, index) {
          //blog item
          return Padding(
            padding: EdgeInsets.only(
                right: index == 0 ? bodyMargin : 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: size.height / 5.3,
                    width: size.width / 2.5,
                    child: Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(
                                        Radius.circular(16)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        blogList[index]
                                            .imageUrl),
                                    fit: BoxFit.cover)),
                            foregroundDecoration:
                                const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(16)),
                              gradient: LinearGradient(
                                  colors:
                                      GradientColors.blogPost,
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter),
                            )),
                        //blog writer and views
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 8,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                blogList[index].writer,
                                style: textTheme.subtitle1,
                              ),
                              Text(blogList[index].views,
                                  style: textTheme.subtitle1),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //blog title
                SizedBox(
                    width: size.width / 2.4,
                    child: Text(
                      blogList[index].title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}

class seeMoreBlog extends StatelessWidget {
  const seeMoreBlog({
    super.key,
    required this.bodyMargin,
  });

  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodyMargin),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(Assets.icons.blurepen.path),
            color: SolidColors.seeMore,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            MyStrings.viewHotestBlog,
            style: Theme.of(context).textTheme.displaySmall,
          )
        ],
      ),
    );
  }
}

class homePageTags extends StatelessWidget {
  const homePageTags({
    super.key,
    required this.bodyMargin,
    required this.textTheme,
  });

  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tagList.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.fromLTRB(
                  8, 8, index == 0 ? bodyMargin : 15, 8),
              child: MainTags(textTheme: textTheme, index: index,)
              );
        },
      ),
    );
  }
}



class homePagePoster extends StatelessWidget {
  const homePagePoster({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: size.width / 1.19119351,
        height: size.height / 4.11991435,
        child: Image.asset(
          Assets.images.programming.path,
          fit: BoxFit.fill,
        ),
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
              colors: GradientColors.homePosterCoverGradiant,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
      ),
      //poster
      Positioned(
        left: 0,
        right: 0,
        bottom: 8,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'ملیکا عزیزی - یک روز پیش',
                  style: textTheme.subtitle1,
                ),
                Text('Like 253', style: textTheme.subtitle1),
              ],
            ),
            Text(
              'دوازده قدم برنامه نویسی یک دوره ی...س',
              style: textTheme.displayLarge,
            )
          ],
        ),
      )
    ]);
  }
}
