import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/round_button.dart';
import 'package:flutter/material.dart';

class WhatYourGoalView extends StatefulWidget {
  const WhatYourGoalView({super.key});

  @override
  State<WhatYourGoalView> createState() => _WhatYourGoalViewState();
}

class _WhatYourGoalViewState extends State<WhatYourGoalView> {
  @override
  Widget build(BuildContext context) {
      var media = MediaQuery.of(context).size;
    return Scaffold(
    backgroundColor: TColor.white,
    body: SafeArea(child: 
      Stack(
        children: [
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
