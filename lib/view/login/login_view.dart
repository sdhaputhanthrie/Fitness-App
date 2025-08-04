import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/round_button.dart';
import 'package:fitness/common_widget/round_textfield.dart';
import 'package:fitness/view/login/complete_profile_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: media.height,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: media.height * 0.03),
                Text(
                  "Hey there",
                  style: TextStyle(color: TColor.gray, fontSize: 16),
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: TColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(height: media.height * 0.05),

                SizedBox(height: media.height * 0.02),
                const RoundTextfield(
                  hitText: "Email",
                  icon: "assets/img/mail.png",
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height: media.height * 0.02),
                RoundTextfield(
                  hitText: "Password",
                  icon: "assets/img/lock.png",
                  obscureText: true,
                  rightIcon: TextButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 15,
                      height: 15,
                      child: Image.asset(
                        "assets/img/show_password.png",
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        color: TColor.gray,
                      ),
                    ),
                  ),
                ),

                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   

                    
                           Text(
                          "Forget your password?",
                          style: TextStyle(color: TColor.gray, fontSize: 10,decoration: TextDecoration.underline),
                        ),
                        
                    
                  ],
                ),
              

                const Spacer(),

                RoundButton(
                  title: "Login",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CompleteProfileView(),
                      ),
                    );
                  },
                ),

                SizedBox(height: media.height * 0.04),

                Row(
                  //crossAxisAlignment: CrossAxisAlignment,
                  children: [
                    Expanded(child: Container(height: 1, color: TColor.gray)),

                    Text(
                      "Or",
                      style: TextStyle(color: TColor.black, fontSize: 12),
                    ),

                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        height: 1,
                        color: TColor.gray,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: media.height * 0.04),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1,
                            color: TColor.gray.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Image.asset(
                          "assets/img/google.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),

                    SizedBox(width: media.height * 0.04),

                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1,
                            color: TColor.gray.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Image.asset(
                          "assets/img/facebook.png",
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: media.height * 0.04),

                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Text(
                        "Don't have accout yet?",
                        style: TextStyle(
                          color: TColor.gray,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      Text(
                        " Register",
                        style: TextStyle(
                          color: TColor.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: media.height * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
