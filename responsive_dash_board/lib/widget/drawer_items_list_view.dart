import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_items.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawer_item_model= [
    const DrawerItemModel(image: Assets.imagesDashboard,title: "Dashboard"),
    const DrawerItemModel(image: Assets.imagesMyTransctions,title: "My Transaction"),
    const DrawerItemModel(image: Assets.imagesStatistics,title: "Statistics"),
    const DrawerItemModel(image: Assets.imagesWalletAccount,title: "Wallet Account"),
    const DrawerItemModel(image: Assets.imagesMyInvestments,title: "My Investments"),

  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawer_item_model.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if(activeIndex!=index){
            setState(() {
            activeIndex=index;
          });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: drawer_item_model[index],
            isActive: activeIndex ==index,
            ),
        ),
      ),
    );
  }
}