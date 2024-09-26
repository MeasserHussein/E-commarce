import 'package:comamarce/features/authentication/presentation/manager/cubit/login_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../../../core/units/styles.dart';

class ProfileDesignWidget extends StatelessWidget {
  const ProfileDesignWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRoute.settingProfile);
      },
      child: Container(
        padding:  EdgeInsets.all(20.sp),
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32.sp),
            bottomRight: Radius.circular(32.sp),
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
                radius: 45.sp,
                backgroundColor: Colors.grey[400],
                child: Image.asset(
                  'assets/icons/user.png', width: 50.w, fit: BoxFit.cover,)),
            const SizedBox(
              width: 10,
            ),
            BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                if(state is VerifyTokenSuccess){
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          '#${state.data.decoded!.iat}',
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        Text(state.data.decoded!.name.toString(), style: Styles.textStyle16),
                      ]);
                }else{
                  return const Text('');
                }

              },
            ),
          ],
        ),
      ),
    );
  }
}

