
import 'package:fitness/common/colo_extension.dart';
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
                      fontSize:20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
            
                  SizedBox(height: media.height * 0.02),
              ],
            ),
            IconButton(onPressed: (){

            }, icon: Image.asset("assets/img/notification_active.png",width: 25,height: 25, fit: BoxFit.fitHeight,)),
                  
                ],),
            
            
                
              ],
            ),
          ),
          ),
      ),
    );
  }
}