import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget{
  final bool isActive;

  const CustomDot({super.key, required this.isActive}); 

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 32:8,
      decoration: ShapeDecoration(
        color: isActive?const Color(0xFF4DB7F2):const Color(0xFFE7E7E7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        )
        ),
    );
  }
}