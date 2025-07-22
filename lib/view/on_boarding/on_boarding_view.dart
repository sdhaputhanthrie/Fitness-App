import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: 3,
            itemBuilder: (context, index) {

              return SizedBox(
                width:media.width,
                height: media.height,
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30), 
                  Image.asset("assets/img/co (1).png", width: media.width , fit:BoxFit.fitWidth, )
                 ],
                ),
              );
            },)
          
        ],
      ),
    );
  }
}
