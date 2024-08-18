
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/widget/active_and_inactive_item.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_items.dart';
import 'drawer_items_list_view.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget{
 final UserInfoModel userInfoModel =UserInfoModel(image: Assets.imagesAvatar3,title: "Lekan Okeowo",subtitle: "demo@gmail.com",);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(userInfoModel: userInfoModel,),
            ),
          const SliverToBoxAdapter(child: SizedBox(height: 8,)),
          const DrawerItemsListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20,)),
                InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Setting system', image: Assets.imagesSettings)),
                InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Logout account', image: Assets.imagesLogout)),
                SizedBox(height: 48,),
              ],
            ),
          )
        ],
      ),
    );
  }

}

