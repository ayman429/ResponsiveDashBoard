import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
          ),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder()
            ),
          child: const Icon(
            Icons.add,
            color: Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}