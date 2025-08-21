import 'package:fitness/common/colo_extension.dart';
import 'package:flutter/material.dart';

class ActivityTrackerView extends StatefulWidget {
  const ActivityTrackerView({super.key});

  @override
  State<ActivityTrackerView> createState() => _ActivityTrackerViewState();
}

class _ActivityTrackerViewState extends State<ActivityTrackerView> {
  List notificationArr = [
    {
      "image": "assets/img/Workout1.jpg",
      "title": "Hey, it's time for lunch",
      "time": "About 1 minutes ago",
    },
    {
      "image": "assets/img/Workout2.jpg",
      "title": "Don't miss your lowerbody workout",
      "time": "About 3 hours ago",
    },
    {
      "image": "assets/img/Workout3.jpg",
      "title": "Hey, let's add some meals for your b",
      "time": "About 3 hours ago",
    },
    {
      "image": "assets/img/Workout1.jpg",
      "title": "Congratulations, You have finished A..",
      "time": "29 May",
    },
    {
      "image": "assets/img/Workout2.jpg",
      "title": "Hey, it's time for lunch",
      "time": "8 April",
    },
    {
      "image": "assets/img/Workout3.jpg",
      "title": "Ups, You have missed your Lowerbo...",
      "time": "8 April",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.white,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: TColor.lightGray,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              "assets/img/black_btn.png",
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            ),
          ),
        ),

        title: Text(
          "Activity Tracker",
          style: TextStyle(
            color: TColor.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: TColor.lightGray,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "assets/img/more-btn.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),

      backgroundColor: TColor.white,
      
    );
  }
}
