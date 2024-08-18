import 'package:flutter/material.dart';

import 'all_expensess_header.dart';
import 'all_expensess_items_list_view.dart';
import 'custom_background_container.dart';

class AllExpensess extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CustomBackgrounContainer(child: Column(
        children: [
          AllExpensessHeader(),
          const SizedBox(height: 16,),
          AllExpensessItemsListView(),
        
      ],),);
  }

}

