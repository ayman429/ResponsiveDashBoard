import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactioItem extends StatelessWidget{
  final TransactionModel transactionModel;

  const TransactioItem({super.key, required this.transactionModel});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context).copyWith(color: const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transactionModel.amoun,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.isWithdrawel? const Color(0xFFF3735E):const Color(0xFF7CD87A)
            ),
        ),
      ),
    );
  }
}