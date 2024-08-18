import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';

import 'income_chart.dart';
import 'income_details.dart';
import 'income_section_body.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  const CustomBackgrounContainer(
      child: Column(
        children: [
          IncomSectionHeader(),
          IncomeSectionBody(),
        ],
      )
      );
  }
}




