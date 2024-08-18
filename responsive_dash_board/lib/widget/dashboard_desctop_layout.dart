
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'all_expensess.dart';
import 'all_expensess_and_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'income_section.dart';
import 'my_card.dart';
import 'my_card_section.dart';
import 'my_card_transaction-history_section.dart';
import 'my_cards_page_view.dart';
import 'quick_invoice.dart';
import 'transaction_history.dart';

class DashBoardDesctopLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 32,),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(children: [
              const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: AllExpensessAndQuickInvoiceSection(),
            )
                      ),
                const SizedBox(width: 24,),
                Expanded(child: Column(
                      children: [
            const SizedBox(height: 40,),
            MyCardAndTransactionHistorySection(),
            const SizedBox(height: 24,),
            Expanded(child: IncomeSection()),
                      ],
                ),
                ),
                      ],),
            )
            ],
          ),
        )
      
      ],
    );
  }

}

