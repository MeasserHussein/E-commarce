import 'package:comamarce/core/units/routing/app_router.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_state.dart';
import 'package:comamarce/features/authentication/presentation/view/login_view/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginBlocBuilder extends StatelessWidget {
  const LoginBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    return BlocConsumer<LoginCubit, LoginState>(
      buildWhen: (_,current)
      =>current is LoginLoading || current is LoginSuccess ||current is LoginError,
      builder: (context, state) {
        return const TextFormFieldWidget();
      },
      listener: (context,state){
        if(state is LoginSuccess){
          context.go(AppRoute.home);
        }
      },
    );
  }
}
