

import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/dash_board_view/data/model/drawer_model.dart';
import 'package:comamarce/features/dash_board_view/featured/views/widgets/cusom_drawer_list_view.dart';
import 'package:comamarce/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_drawer_item.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return     const Drawer(
      backgroundColor: Colors.white,
      elevation: 0,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 50,),
          ),
          SliverToBoxAdapter(
            child: UserInfoListTitle(image: Assets.imagesLogo, title: 'helo', subTitle: 'meso@'),
          ),
         SliverToBoxAdapter(
           child:  SizedBox(height: 8,),
         ),
          CustomDrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20,)),
                InActiveDrawerItem(drawerModel:DrawerModel(icon: Icons.settings, text: 'Setting')),
                InActiveDrawerItem(drawerModel:DrawerModel(icon: Icons.logout_rounded, text: 'Logout')),
                SizedBox(height: 48,),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({super.key, required this.image, required this.title, required this.subTitle});
  final String image ,title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color:const Color(0xFFFAFAFA),
      child: ListTile(
        leading: CircleAvatar(radius:25,child: SvgPicture.asset(image,)),
        title: Text(
          title,
          style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w600
          ),
        ),
        subtitle: Text(
          subTitle,
          style:Styles.textStyle14.copyWith(
              fontSize: 12
          ) ,
        ),
      ),
    );
  }
}
