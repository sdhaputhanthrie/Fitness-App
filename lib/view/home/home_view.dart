import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/round_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        SizedBox(height: media.height * 0.02),
                        Text(
                          "Welcome Back",
                          style: TextStyle(color: TColor.gray, fontSize: 16),
                        ),
                        Text(
                          "Stefani wong ",
                          style: TextStyle(
                            color: TColor.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        SizedBox(height: media.height * 0.02),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/notification_active.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: media.height * 0.02),

                Container(
                  height: media.height * 0.2,

                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: TColor.primaryG),
                    borderRadius: BorderRadius.circular(media.width * 0.1),
                  ),

                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  "BMI (Body Mass Index)",
                                  style: TextStyle(
                                    color: TColor.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "You have a normal weight",
                                  style: TextStyle(
                                    color: TColor.white.withOpacity(0.7),
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: media.height * 0.01),

                                SizedBox(
                                  width: 120,
                                  height: 30,
                                  child: RoundButton(
                                    title: "view More",
                                    type: RoundButtonType.bgSGradient,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),

                            AspectRatio(
                              aspectRatio: 1,
                              child: PieChart(
                                PieChartData(
                                  pieTouchData: PieTouchData(
                                    touchCallback:
                                        (
                                          FlTouchEvent event,
                                          pieTouchResponse,
                                        ) {},
                                  ),
                                  startDegreeOffset: 180,
                                  borderData: FlBorderData(show: false),
                                  sectionsSpace: 1,
                                  centerSpaceRadius: 0,
                                  sections: showingSections(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      
      var color0 = TColor.secondaryColor1;
      

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: color0,
            value: 25,
            title: '',
            radius: 45,
            titlePositionPercentageOffset: 0.55,
            
          );
        case 1:
          return PieChartSectionData(
            color: Colors.white,
            value: 75,
            title: '',
            radius: 30,
            titlePositionPercentageOffset: 0.55,

          );
        
        default:
          throw Error();
      }
    });
  }
}
