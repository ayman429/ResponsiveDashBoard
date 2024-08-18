import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widget/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';
import 'package:responsive_dash_board/widget/income_section.dart';
import 'package:responsive_dash_board/widget/my_card_transaction-history_section.dart';

import 'dashboard_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 32,),
         const Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: DashboardMobileLayout(),
          ),),
        const SizedBox(width: 32,),
      ],
    );
  }
}

