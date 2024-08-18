import 'package:flutter/material.dart';

import 'all_expensess_and_quick_invoice_section.dart';
import 'income_section.dart';
import 'my_card_transaction-history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AllExpensessAndQuickInvoiceSection(),
          const SizedBox(height: 24,),
          MyCardAndTransactionHistorySection(),
          const SizedBox(height: 24,),
          IncomeSection(),
        ],
      ),
    );
  }
}