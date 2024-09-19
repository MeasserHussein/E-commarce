import 'package:comamarce/features/authentication/presentation/manager/cubit/login_state.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_state.dart';
import 'package:comamarce/features/authentication/presentation/view/register_view/widgets/signup_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignupBlocBuilderTextField extends StatelessWidget {
  const SignupBlocBuilderTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context,state){
        if(state is SignupSuccess){
          context.pop();
        }

      },
      builder: (context, state) {
        return const SignupTextFormField();
      },
    );
  }
}
