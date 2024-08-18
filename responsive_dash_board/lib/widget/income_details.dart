import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'item_details.dart';

class IncomDetails extends StatelessWidget{
  static const item = [
    ItemDetailsModel(title: "Design service", value:"40%", color: Color(0xFF208BC7)),
    ItemDetailsModel(title: "Design product", value:"25%", color: Color(0xFF4DB7F2)),
    ItemDetailsModel(title: "Product royalti", value:"20%", color: Color(0xFF064060)),
    ItemDetailsModel(title: "Other", value:"22%", color: Color(0xFFE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: item.map((e) => ItemDetails(itemDetailsModel: e,)).toList(),
    );
    // ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: item.length,
    //   itemBuilder: (context, index) => ItemDetails(itemDetailsModel: item[index],),
    //   );
  }
}

