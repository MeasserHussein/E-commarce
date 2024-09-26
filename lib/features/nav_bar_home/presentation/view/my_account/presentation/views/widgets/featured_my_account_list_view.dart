import 'package:comamarce/core/units/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../../../core/units/routing/app_routes.dart';
import '../../../../../manager/app_state_cubit/app_state_cubit.dart';
import 'app_icon_and_text_container.dart';

class FeaturedMyAccountListView extends StatelessWidget {
  const FeaturedMyAccountListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStateState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  BlocProvider.of<AppCubit>(context).changeScreen(0);
                },
                child: const AppIconAndTextContainer(
                  text: 'My Orders',
                  icon: FontAwesomeIcons.box,
                  backgroundColor: Colors.purple,
                ),
              ),
               SizedBox(height: 7.h,),
              GestureDetector(
                onTap: (){
                  BlocProvider.of<AppCubit>(context).changeScreen(3);
                },
                child: const AppIconAndTextContainer(
                  text: 'Favourite',
                  icon: FontAwesomeIcons.solidHeart,
                  backgroundColor: Colors.red,
                ),
              ),
               SizedBox(height: 7.h,),
              GestureDetector(
                onTap: (){
                  BlocProvider.of<AppCubit>(context).changeScreen(1);
                },
                child:  AppIconAndTextContainer(
                  text: 'Products',
                  image: Image.asset('assets/icons/products.png',color: Colors.white,),
                  backgroundColor: AppColors.primaryBlueColor,
                ),
              ),
              SizedBox(height: 7.h,),
              GestureDetector(
                onTap: () {
                  context.push(AppRoute.settingProfile);
                },
                child:  const AppIconAndTextContainer(
                  text: 'Profile',
                  icon: FontAwesomeIcons.user,
                  backgroundColor: Colors.grey,
                ),
              ),
               SizedBox(height: 7.h,),
              GestureDetector(
                onTap: () {
                  context.go(AppRoute.login);
                },
                child: const AppIconAndTextContainer(
                  text: 'Log Out',
                  icon: FontAwesomeIcons.arrowRightFromBracket,
                  backgroundColor: Colors.deepOrangeAccent,
                ),
              ),


            ],
          ),
        );
      },
    );
  }
}