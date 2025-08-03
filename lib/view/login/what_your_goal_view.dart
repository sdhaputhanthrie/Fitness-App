import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/round_button.dart';
import 'package:fitness/view/login/welcome_view.dart';
import 'package:flutter/material.dart';

class WhatYourGoalView extends StatefulWidget {
  const WhatYourGoalView({super.key});

  @override
  State<WhatYourGoalView> createState() => _WhatYourGoalViewState();
}

class _WhatYourGoalViewState extends State<WhatYourGoalView> {
  CarouselSliderController buttonCarouselController =
      CarouselSliderController();

  List goalArr = [
    {"image": "assets/img/goal__1.png", "title": "Improve Shape", "subtitle": "I have a low amount of body fat \n and want to improve my \n shape."},
    {"image": "assets/img/goal__2.png", "title": "Learn & Tone", "subtitle": "I'm skinny fat look thin but have \n no shap.I want to add learn\n muscle in the right way."},
    {"image": "assets/img/goal__3.png", "title": "Lose a Fat", "subtitle": "I have over 20 lbs to lose. I want to \n drop all this fat and gain muscle \n mass."},
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: CarouselSlider(
                items: goalArr.map(
                          (gObj) => Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: TColor.primaryG,
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: media.width * 0.01,
                              horizontal: 20,
                            ),
                            alignment: Alignment.center,
                            child: FittedBox(
                              child: Column(
                                children: [
                                  Image.asset(
                                    gObj["image"].toString(),
                                    width: media.width * 0.5,
                                    fit: BoxFit.fitWidth,
                                  ),

                                  SizedBox(height: media.height * 0.05),

                                  Text(
                                    gObj["title"].toString(),
                                    style: TextStyle(
                                      color: TColor.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),

                                  Container(width: media.width * 0.1, height: 1, color: TColor.white,),
                                  SizedBox(height: media.height * 0.02),

                                  Text(
                                    gObj["subtitle"].toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: TColor.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 0.74,
                  initialPage: 0,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: media.width,
              child: Column(
                children: [
                  SizedBox(height: media.height * 0.05),

                  Text(
                    "What is your goal?",
                    style: TextStyle(
                      color: TColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  Text(
                    "Helps us pick the right plan!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: TColor.gray, fontSize: 16),
                  ),
                  const Spacer(),

                  SizedBox(height: media.height * 0.05),

                  RoundButton(
                    title: "Confirm ",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeView(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: media.height * 0.05),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
