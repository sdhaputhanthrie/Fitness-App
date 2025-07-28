import 'package:fitness/common/colo_extension.dart';
import 'package:flutter/material.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hitText;
  final String icon;
  final Widget? rightIcon ;
  final bool obscureText ;
  final EdgeInsets? margin;
  const RoundTextfield({
    super.key,
    required this.hitText,
    required this.icon, 
    this.controller,
    this.margin,
    this.keyboardType,
    this.obscureText =  false,
    this.rightIcon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: TColor.lightGray,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.none,
        obscureText: obscureText,

        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hitText,
          suffixIcon: rightIcon ,
          

          prefixIcon: Container(
            alignment: Alignment.center,
            width: 15,
            height: 15,
            child: Image.asset(
              icon,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              color: TColor.gray,
            ),
          ),
          hintStyle: TextStyle(color: TColor.gray, fontSize: 12),
        ),
      ),
    );
  }
}
