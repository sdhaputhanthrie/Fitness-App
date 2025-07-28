
import 'package:fitness/common/colo_extension.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() =>  _SignUpViewState();
}

class  _SignUpViewState extends State <SignUpView> {
  @override
  Widget build(BuildContext context) {
    var meidia = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hey there," ,style: TextStyle(color:TColor.gray,fontSize: 16),),
              Text("Create an Account," ,style: TextStyle(color:TColor.black,fontSize: 20,fontWeight: FontWeight.w700),),

              SizedBox(height: meidia.height * 0.05,),
              
              Container(
                decoration: BoxDecoration(color: TColor.lightGray,
                  borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "First Name",
                      prefixIcon: Container(
                        alignment: Alignment.center,
                        width: 15, height: 15,
                        child: Image.asset("assets/img/user.png", width: 20, color: TColor.gray, height: 20, fit: BoxFit.contain)),
                      hintStyle: TextStyle(
                        color: TColor.gray,
                        fontSize: 12,
                      ),
                    ),
                  )
                ),
              

              

          
            ],
          ),
        ),
      )
    );
  }
}