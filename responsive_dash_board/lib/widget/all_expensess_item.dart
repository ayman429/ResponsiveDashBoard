import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import '../models/all_expensess_item_model.dart';
import 'active_and_inactive_all_expensess_item.dart';
import 'all_expensess_item_header.dart';

class AllExpensessItems extends StatelessWidget {
  final AllExpensessItemModel allExpensessItemModel;

  const AllExpensessItems({super.key, required this.allExpensessItemModel, required this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected?ActiveAllExpensessItem(allExpensessItemModel: allExpensessItemModel):
    InActiveAllExpensessItem(allExpensessItemModel: allExpensessItemModel);
  }
}

