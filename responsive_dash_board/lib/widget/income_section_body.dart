import 'package:flutter/material.dart';

import '../utils/size_config.dart';
import 'detailed_income_chart.dart';
import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width>=SizeConfig.desktop?
    Expanded(child: Padding(
      padding: const EdgeInsets.all(16),
      child: DetailedIncomeChart(),
    )):
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(
          flex: 2,
          child: IncomDetails()),
      ],
    );
  }
}