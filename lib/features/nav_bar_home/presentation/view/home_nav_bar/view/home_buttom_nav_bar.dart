import 'package:comamarce/features/nav_bar_home/presentation/view/home_nav_bar/view/widgets/custom_bottom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manager/app_state_cubit/app_state_cubit.dart';


class HomeButtonNavBar extends StatelessWidget {
  const HomeButtonNavBar({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppStateState>(
        builder: (context, state) {
          AppCubit cubit =BlocProvider.of<AppCubit>(context);
          return Scaffold(
            body: cubit.views[cubit.currentIndex],
            bottomNavigationBar:  customBottomNavigationBar(cubit),
          );
        },
      ),
    );
  }

}
