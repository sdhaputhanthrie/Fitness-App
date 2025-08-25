import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/round_button.dart';
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      TColor.primaryColor2.withOpacity(0.3),
                      TColor.primaryColor1.withOpacity(0.3),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text(
                          "Today Target",
                          style: TextStyle(
                            color: TColor.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        SizedBox(
                          width: 30,
                          height: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: TColor.primaryG),
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: MaterialButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              height: 30,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              textColor: TColor.primaryColor1,
                              minWidth: double.maxFinite,
                              elevation: 0,
                              color: Colors.transparent,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(children: [
                      Container(
                            decoration: BoxDecoration(
                              color: TColor.white,
                              borderRadius: BorderRadius.circular(15),
                            ),

                            child:Row(children: [
                              Image.asset("assets/img/water.jpg",width: 40,),
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (bounds) {
                                      return LinearGradient(
                                        colors: TColor.primaryG,
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ).createShader(
                                        Rect.fromLTRB(
                                          0,
                                          0,
                                          bounds.width,
                                          bounds.height,
                                        ),
                                      );
                                    },

                                    child: Text(
                                      "8L",
                                      style: TextStyle(
                                        color: TColor.white.withOpacity(0.7),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Water Intake",
                                    style: TextStyle(
                                      color: TColor.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                 
                                ],
                              ))
                                 
                            ],),),
                    ],)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
