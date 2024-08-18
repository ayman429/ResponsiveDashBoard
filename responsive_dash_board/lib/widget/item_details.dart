import 'package:flutter/material.dart';

import '../models/item_details_model.dart';
import '../utils/app_styles.dart';

class ItemDetails extends StatelessWidget{
  final ItemDetailsModel itemDetailsModel;

  const ItemDetails({super.key, required this.itemDetailsModel});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:  ShapeDecoration(
          color: itemDetailsModel.color ,
          shape: OvalBorder(),
          ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}