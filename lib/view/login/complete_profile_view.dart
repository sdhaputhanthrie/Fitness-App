import 'package:fitness/common/colo_extension.dart' show TColor;
import 'package:fitness/common_widget/round_button.dart';
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
                 SizedBox(height: media.height * 0.04),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Container(
      
      decoration: BoxDecoration(
        color: TColor.lightGray,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 50,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset(
              "assets/img/gender.png",
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              color: TColor.gray,
            )
          ),

        
          Expanded(
            child: DropdownButtonHideUnderline(
            
              child: DropdownButton(
                items: ["Male","Female"].map((name) => DropdownMenuItem
                                   ( value: name,
                                    child:Text(
                                      name,
                                    style: TextStyle(
                                      color: TColor.gray,
                                      fontSize: 16),),)).toList(),onChanged: (value){},
                                      isExpanded: true,
                                      
            
                                      hint: Text("Choose Gender",
                                      style: TextStyle(
                                      color: TColor.gray,
                                      fontSize: 12),
                                      ),
                                      ),
            ),
          ),
          SizedBox(width: 8),
        ],
      )
      ),
      SizedBox(height: media.height * 0.02),

                      RoundTextfield(
                        controller: txtDate,
                        hitText: "Date of Birth",
                        icon: "assets/img/date.png",
                        
                      ),
                      SizedBox(height: media.height * 0.02),

                      Row(
                        children: [
                        Expanded(
                          child: RoundTextfield(
                          controller: txtDate,
                          hitText: "Your weight",
                          icon: "assets/img/weight.png",
                                                ),
                        ),

                        const SizedBox(width: 8),
                        Container(
                          width: 45,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: TColor.secondaryG,),
                              borderRadius: BorderRadius.circular(15)
                           
                          ),
                          child: Text(
                            "kG",
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 12,
                              
                            ),
                            
                          ),
                        )
                        ],
                      ),
                      SizedBox(height: media.height * 0.02),

                      Row(
                        children: [
                        Expanded(
                          child: RoundTextfield(
                          controller: txtDate,
                          hitText: "Your weight",
                          icon: "assets/img/height.png",
                                                ),
                        ),

                        const SizedBox(width: 8),
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: TColor.secondaryG,),
                              borderRadius: BorderRadius.circular(15)
                           
                          ),
                          child: Text(
                            "CM",
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 12,
                              
                              
                            ),
                            
                          ),
                        )
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: media.height * 0.05),
                RoundButton(
                  title: "Next >",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CompleteProfileView(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
