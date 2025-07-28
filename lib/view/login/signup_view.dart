
import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/round_textfield.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() =>  _SignUpViewState();
}

class  _SignUpViewState extends State <SignUpView> {

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child:SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Hey there," ,style: TextStyle(color:TColor.gray,fontSize: 16),),
                Text("Create an Account," ,style: TextStyle(color:TColor.black,fontSize: 20,fontWeight: FontWeight.w700),),
            
                SizedBox(height: media.height * 0.05,),
                const RoundTextfield(hitText: "First name", icon:"assets/img/user.png", ),

                SizedBox(height: media.height * 0.02,),
                const RoundTextfield(hitText: "Last Name", icon:"assets/img/user.png", ),

                SizedBox(height: media.height * 0.02,),
                const RoundTextfield(hitText: "Email", icon:"assets/img/mail.png", keyboardType: TextInputType.emailAddress, ),

                 SizedBox(height: media.height * 0.02,),
                 RoundTextfield(hitText: "Password", icon:"assets/img/lock.png",obscureText: true, rightIcon: TextButton(onPressed:(){}, child: Container(
            alignment: Alignment.center,
            width: 15,
            height: 15,
            child: Image.asset(
              " assets/img/show_password.png",
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              color: TColor.gray,
            ),
          ),), ), 
          

          Row(children: [IconButton(onPressed:(){}, 
          icon: Icon(
          isChecked ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined,
          
          color:TColor.gray ,))],)

 
            
              ],
            ),
          ),
        ),
      )
    );
  }
}
                
                
            
                
           