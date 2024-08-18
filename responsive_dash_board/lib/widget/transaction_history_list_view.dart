import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';

import 'tansaction_item.dart';

class TransactionHistoryListView extends StatelessWidget{
  static const items = [
    TransactionModel(title: "Cash Withdrawal", date: "13 Apr, 2022 ", amoun: r"$20,129", isWithdrawel: true),
    TransactionModel(title: "Landing Page project", date: "13 Apr, 2022 at 3:30 PM", amoun: r"$2,000", isWithdrawel: false),
    TransactionModel(title: "Juni Mobile App project", date: "13 Apr, 2022 at 3:30 PM", amoun: r"$20,129", isWithdrawel: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactioItem(transactionModel: e,)).toList(),
    );
    // ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) => TransactioItem(transactionModel: items[index],),
    //   );
  }
}