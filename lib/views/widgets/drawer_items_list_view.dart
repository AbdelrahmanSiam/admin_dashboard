import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final int activeIndex = 0;
  final List<DrawerItemModel> drawerList = [
    DrawerItemModel(
      title: "Dashboard",
      image: Assets.assetsImagesDashboardIcon,
    ),
    DrawerItemModel(
      title: "My Transaction",
      image: Assets.assetsImagesTransactionIcon,
    ),
    DrawerItemModel(
      title: "Statistics",
      image: Assets.assetsImagesStatisticsIcon,
    ),
    DrawerItemModel(
      title: "Wallet Account",
      image: Assets.assetsImagesWalletIcon,
    ),
    DrawerItemModel(
      title: "My Investments",
      image: Assets.assetsImagesInvestmentsIcon,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: drawerList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if(activeIndex != index){
              setState(() {
                activeIndex == index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerItemModel: drawerList[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
