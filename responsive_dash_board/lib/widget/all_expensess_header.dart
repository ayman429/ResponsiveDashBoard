import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'range_opations.dart';

class AllExpensessHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOpations(),
      ],
    );
  }
}

