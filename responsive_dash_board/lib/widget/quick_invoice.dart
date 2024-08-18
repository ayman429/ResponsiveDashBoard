
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/title_text_field.dart';

import 'custom_text_field.dart';
import 'latest_transaction.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CustomBackgrounContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          const Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      )
      );
  }

}


