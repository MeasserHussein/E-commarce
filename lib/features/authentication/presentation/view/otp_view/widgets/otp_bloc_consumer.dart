import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/features/authentication/presentation/manager/otp_cubit/otp_code_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/otp_cubit/otp_code_state.dart';
import 'package:comamarce/features/authentication/presentation/view/otp_view/widgets/otp_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OtpBlocConsumer extends StatelessWidget {
  const OtpBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpCodeCubit, OtpCodeState>(
      listener: (context, state) {
        if(state is OtpSuccess){
          context.push(AppRoute.changePassword);
        }
      },
      builder: (context, state) {
        return const OtpTextFieldWidget();
      },
    );
  }
}
