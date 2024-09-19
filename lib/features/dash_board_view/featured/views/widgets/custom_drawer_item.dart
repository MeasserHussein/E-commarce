import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:flutter/material.dart';

import '../../../data/model/drawer_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerModel, required this.isActive,});

   final DrawerModel drawerModel;
   final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive? ActiveDrawerItem(drawerModel: drawerModel): InActiveDrawerItem(drawerModel: drawerModel);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerModel.icon,color: AppColors.primaryBlueColor,),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
          child: Text(drawerModel.text,style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w600
          ),)),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerModel.icon,color: AppColors.primaryBlueColor,),
      title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(drawerModel.text,style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.primaryBlueColor
          ),)),
      trailing: Container(
        width: 3,
        decoration: const BoxDecoration(
          color: AppColors.primaryBlueColor
        ),
      ),
    );
  }
}