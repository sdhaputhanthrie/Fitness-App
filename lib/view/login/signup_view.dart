import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/round_button.dart';
import 'package:fitness/common_widget/round_textfield.dart';
import 'package:fitness/view/login/complete_profile_view.dart';
import 'package:fitness/view/login/login_view.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
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
                  "Create an Account",
                  style: TextStyle(
                    color: TColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(height: media.height * 0.05),

                const RoundTextfield(
                  hitText: "First name",
                  icon: "assets/img/user.png",
                ),

                SizedBox(height: media.height * 0.02),
                const RoundTextfield(
                  hitText: "Last Name",
                  icon: "assets/img/user.png",
                ),

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
                  //crossAxisAlignment: CrossAxisAlignment,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },

                      icon: Icon(
                        isCheck
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,

                        color: TColor.gray,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Expanded(
                        child: Text(
                          "By continuing you accept our Privacy Policy and \nTerm of Use,",
                          style: TextStyle(color: TColor.gray, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: media.height * 0.1),

                RoundButton(
                  title: "Register",
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: TColor.gray,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      Text(
                        " Login",
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
