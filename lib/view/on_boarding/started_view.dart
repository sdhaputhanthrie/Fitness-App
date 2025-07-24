import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/round_buttom.dart';
import 'package:flutter/material.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  bool isChangeColor = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: TColor.primaryG,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              "Fitnex",
              style: TextStyle(
                color: TColor.black,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),

            Text(
              "Fitness You Wanna Have",
              style: TextStyle(color: TColor.gray, fontSize: 18),
            ),
            const Spacer(),

            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: RoundButtom(title: "Get Started", onPressed: () {}),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
