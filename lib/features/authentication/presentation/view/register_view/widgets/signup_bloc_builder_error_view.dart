import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_state.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocBuilderErrorView extends StatelessWidget {
  const SignupBlocBuilderErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      builder: (context, state) {
        return Column(
          children: [
            if (state is SignupError)
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                    color: AppColors.black12Color.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Text(
                  state.error.toString(),
                  style: Styles.textStyle14.copyWith(color: Colors.red),
                ),
              ),
            if (state is SignupError)
              const SizedBox(
                height: 10,
              ),
          ],
        );
      },
    );
  }
}
