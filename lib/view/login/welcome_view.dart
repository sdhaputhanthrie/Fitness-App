
import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/view/main_tab/main_tab_view.dart';
import 'package:flutter/material.dart';

import '../../common_widget/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(backgroundColor:TColor.white,
    body: SafeArea(
      child: Container(width: media.width,
       padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(height: media.height * 0.01),
        Image.asset(
                  "assets/img/welcome.png",
                  width: media.width * 0.8,
                  fit: BoxFit.fitWidth,
                  height: 350,
                ),

                Text(
                  "Welcome Stefani",
                  style: TextStyle(color: TColor.black, fontSize: 20, fontWeight: FontWeight.w700,),
                ),
                
                Text(
                  "You are all set now,let's reach your \n together with us ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.gray,
                    fontSize: 16,
                    
                  ),
                ),
                const Spacer(),

                  RoundButton(
                    title: "Go to Home",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainTabView(),
                        ),
                      );
                    },
                  ),
                SizedBox(height: media.height * 0.1),
      ],
    ),
    
    )),);
  }
}