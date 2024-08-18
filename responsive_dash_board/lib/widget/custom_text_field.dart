
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget{
  final String hint;

  CustomTextField({super.key, required this.hint});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(color: const Color(0xFFAAAAAA)),
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        border: BulidBorder(),
        enabledBorder: BulidBorder(),
        focusedBorder:BulidBorder(), 
      ),
    );
  }

  OutlineInputBorder BulidBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFFAFAFA),)
      );
  }
}