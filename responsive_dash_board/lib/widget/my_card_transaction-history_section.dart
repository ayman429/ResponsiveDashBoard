import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/my_card_section.dart';
import 'package:responsive_dash_board/widget/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return CustomBackgrounContainer(
      child:  Column(
        children: [
          MyCardSection(),
          const Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistory(),
        ],
      )
    );
  }
}