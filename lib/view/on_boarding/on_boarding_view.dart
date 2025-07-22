import 'package:fitness/common_widget/on_boarding_page.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController();

  List pageArr = [
    {
      "title": "Track your Goal",
      "subtitle":
          "Don't worry if you have trouble determininag your goals, We can help you determine your goals and track your goals",
      "image": "assets/img/co (1).png",
    },
    {
      "title": "Get Burn",
      "subtitle":
          "Let's keep burning, to achive yours goals, it hurts only teporarily, if you give up now you will be in pain forever",
      "image": "assets/img/co (2).png",
    },
    {
      "title": "Eat Well",
      "subtitle":
          "Let's start healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      "image": "assets/img/co (3).png",
    },
    {
      "title": "Improve Sleep\nQuality",
      "subtitle":
          "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
      "image": "assets/img/co (4).png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return OnBoardingPage(pObj: pObj);
            }
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            color: Colors.blue,
            child: IconButton(icon: Icon(Icons.navigate_next, color: TColor.white,),color: TColor.primaryColor1 , onPressed: (){

            },
          ),
          )
        ],
      ),
    );
  }
}
