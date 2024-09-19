import 'package:comamarce/features/dash_board_view/data/model/drawer_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_drawer_item.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({super.key,});



  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  int activeIndex = 0;
    List<DrawerModel> drawer= const[
    DrawerModel(icon: Icons.dashboard, text: 'DASH BOARD'),
    DrawerModel(icon: FontAwesomeIcons.connectdevelop, text: 'My Transaction'),
    DrawerModel(icon: FontAwesomeIcons.buildingCircleXmark, text: 'Statistics'),
    DrawerModel(icon: Icons.wallet, text: 'Wallet Account'),
    DrawerModel(icon: Icons.inventory_sharp, text: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: drawer.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
             if(activeIndex !=index){
               setState(() {
                 activeIndex = index;
               });
             }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CustomDrawerItem(
                drawerModel: drawer[index],
                isActive: activeIndex==index,
              ),
            ),
          );
        });
  }
}
