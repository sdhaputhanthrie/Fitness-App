import 'package:fitness/common/colo_extension.dart' show TColor;
import 'package:fitness/common_widget/round_textfield.dart';
import 'package:flutter/material.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({super.key});

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  TextEditingController txtDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/img/gym.png",
                  width: media.width,
                  fit: BoxFit.fitWidth,
                  height: 350,
                ),

                Text(
                  "Let's complete your profile",
                  style: TextStyle(color: TColor.black, fontSize: 20, fontWeight: FontWeight.w700,),
                ),
                
                Text(
                  "It will help us to know more about you!",
                  style: TextStyle(
                    color: TColor.gray,
                    fontSize: 16,
                    
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      RoundTextfield(
                        controller: txtDate,
                        hitText: "Date of Birth",
                        icon: "assets/img/date.png",
                      ),

                      Row(
                        children: [
                        Expanded(
                          child: RoundTextfield(
                          controller: txtDate,
                          hitText: "Your weight",
                          icon: "assets/img/weight.png",
                                                ),
                        ),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: media.height * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
