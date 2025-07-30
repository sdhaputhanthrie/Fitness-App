
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/round_button.dart';
import 'package:flutter/material.dart';

class WhatYourGoalView extends StatefulWidget {
  const WhatYourGoalView({super.key});

  @override
  State<WhatYourGoalView> createState() => _WhatYourGoalViewState();
}

class _WhatYourGoalViewState extends State<WhatYourGoalView> {
  CarouselSliderController buttonCarouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
      var media = MediaQuery.of(context).size;
    return Scaffold(
    backgroundColor: TColor.white,
    body: SafeArea(child: 
      Stack(
        children: [

         Center(
           child: CarouselSlider(
                   items: ["assets/img/goal_1.png","assets/img/goal_2.png","assets/img/goal_3.png"].map((gObj) => Container(decoration: BoxDecoration(gradient: LinearGradient(colors: TColor.primaryG,begin: Alignment.topLeft,end: Alignment.bottomRight),borderRadius: BorderRadius.circular(25),),)).toList(),
                   carouselController: buttonCarouselController,
                   options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.75,
            aspectRatio: 0.8,
            initialPage: 0,
                   ),
                 ),
         ),
      
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: media.width,
            child: Column(
              children: [
                SizedBox(height: media.height * 0.05,
                ),

                 Text(
                    "What is your goal?",
                    style: TextStyle(color: TColor.black, fontSize: 20, fontWeight: FontWeight.w700,),
                  ),
                  
                  Text(
                    "Helps us pick the right plan!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.gray,
                      fontSize: 16,
                                          
                    ),
                  ),
                  const Spacer(),
                  

                   SizedBox(height: media.height * 0.05),

                
                RoundButton(
                  title: "Confirm ",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WhatYourGoalView(),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],

    )
    ),
    );
  }
}
