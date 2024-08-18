import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ransactionHistoryHeader(),
        const SizedBox(height: 20,),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16(context).copyWith(color: const Color(0xFFAAAAAA)),
        ),
        const SizedBox(height: 16,),
        TransactionHistoryListView(),
      ],
    );
  }

}

class ransactionHistoryHeader extends StatelessWidget {
  const ransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction History",
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          "See all",
          style: AppStyles.styleMedium16(context).copyWith(color: const Color(0xFF4EB7F2)),
        ),
      ],
    );
  }
}