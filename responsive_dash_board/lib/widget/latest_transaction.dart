import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
          ),
        const SizedBox(height: 16,),
        LatestTransactionListView(),
      ],
    );
  }
}