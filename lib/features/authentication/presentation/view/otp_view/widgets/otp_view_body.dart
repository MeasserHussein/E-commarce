import 'package:comamarce/core/widgets/show_snack_bar.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_cubit.dart';
import 'package:comamarce/features/authentication/presentation/view/otp_view/widgets/otp_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/design_auth_container.dart';
import '../../../../../../core/widgets/text_button.dart';
import 'otp_text_field_widget.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key,});

  @override
  Widget build(BuildContext context) {

    //var cubit =context.read<OtpCubit>();
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: DesignAuthContainer(
            color: Colors.white,
            widget: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/otp.png', width: 120,),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Enter Code OTP',
                      style: Styles.textStyle24w600.copyWith(
                          color: AppColors.primaryBlueColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                      // if(state is OtpError)
                      //   Align(
                      //     alignment: Alignment.center,
                      //     child: Text(state.massError,
                      //       maxLines: 1,
                      //       textAlign: TextAlign.center,
                      //       style: Styles.textStyle16.copyWith(
                      //       color: Colors.red
                      //     ),),
                      //   ),
                      const SizedBox(height: 20,),
                      const OtpBlocConsumer(),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}