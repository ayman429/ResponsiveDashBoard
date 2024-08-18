import 'package:flutter/material.dart';

import '../models/all_expensess_item_model.dart';
import '../utils/app_images.dart';
import 'all_expensess_item.dart';

class AllExpensessItemsListView extends StatefulWidget{
  @override
  State<AllExpensessItemsListView> createState() => _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  final items =[
    const AllExpensessItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: r"$20,129",
    ),
    const AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: r"$20,129",
    ),
    const AllExpensessItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: r"$20,129",
    ),
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex=0;
                });
              },
              child: AllExpensessItems(allExpensessItemModel: items[0],isSelected: selectedIndex==0,),
            ),
          ),
        const SizedBox(width: 8,),
        Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex=1;
                });
              },
              child: AllExpensessItems(allExpensessItemModel: items[1],isSelected: selectedIndex==1),
            ),
          ),
          const SizedBox(width: 8,),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex=2;
                });
              },
              child: AllExpensessItems(allExpensessItemModel:items[2],isSelected: selectedIndex==2,),
            ),
          ),
      ],
    );
    // return Row(
    //   children: items.asMap().entries.map((e){
    //     int index =e.key;
    //     var item =e.value;
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             setState(() {
    //               selectedIndex=index;
    //             });
    //           },
    //           child: Padding(
    //             padding:  EdgeInsets.symmetric(horizontal: index==1? 12:0),
    //             child: AllExpensessItems(allExpensessItemModel: item,isSelected: selectedIndex==index,),
    //           ),
    //         ),
    //       );
        
        
    //   }).toList(),
    // );
  }
}