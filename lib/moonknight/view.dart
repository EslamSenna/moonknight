import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moonknight/moonknight/consts.dart';
import 'package:moonknight/moonknight/widgets/items.dart';

class MoonKnightScreen extends StatelessWidget {
  MoonKnightScreen({Key? key}) : super(key: key);

  var images =[
    'assets/omar.jpg',
    'assets/maya.jpg',
    'assets/ethan.jpg',
    'assets/murray.jpg',
    'assets/gaspard.jpg',



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/Moon_Knight.png',
                          ),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        DefaultIcon(
                          color: appColor,
                          icon: FontAwesomeIcons.share,
                          iconColor: Colors.white,
                        ),
                        DefaultIcon(
                          color: Colors.transparent,
                          icon: FontAwesomeIcons.star,
                        ),
                        Spacer(),
                        Column(
                          children: [
                            textThemes(context,
                                text: 'New • Season 1 • 2022 • Disney+',
                                size: 10),
                            textThemes(context,
                                text: 'Moon Knight',
                                size: 34,
                                fontWeight: FontWeight.bold),
                            Types(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textThemes(context,
                                    text: 'S1:E3 The Friendly Type', size: 10),
                                textThemes(context, text: '53 min', size: 10),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: double.infinity,
                              height: 6,
                              color: appColor,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    color: Colors.grey,
                                  )),
                                  Expanded(flex: 2, child: Container())
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 18),
                                decoration: BoxDecoration(
                                    color: appColor,
                                    borderRadius: BorderRadius.circular(10)),
                                width: double.infinity,
                                child: TextButton(
                                    onPressed: () {},
                                    child: textThemes(context,
                                        text: 'Continue Watching', size: 20))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Watching(
                                  title: '7.7/10',
                                  subtitle: '57k',
                                  logo: 'assets/imdb.png',
                                  icon: Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                  ),
                                ),
                                Watching(
                                  icon: Container(),
                                  title: 'Watch now',
                                  subtitle: 'Subscription',
                                  logo: 'assets/disney.jpg',
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      textThemes(context,
                          text:
                              "With Marc in the forefront and Harrow near Ammit's tomb, Marc needs to navigate Cairo while putting his differences aside with layla and Steven without jeopardizing their mission.",
                          size: 14,
                          color: Colors.grey,
                          height: 1.5),
                      Spacer(),
                      Row(
                        children: [
                          textThemes(context, text: 'Cast', size: 16,fontWeight:  FontWeight.w800),
                          Spacer(),
                          textThemes(context, text: 'See all >', size: 14,fontWeight: FontWeight.w600),
                        ],
                      ),
                      Spacer(),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: List.generate(
                                5,
                                (index) => Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        images[index],
                                      ),
                                      fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                      margin: EdgeInsets.only(right: 10),
                                      height: 100,
                                      width: 78,

                                    ))),
                      )
                    ],
                  ),
                ),
                color: appColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
