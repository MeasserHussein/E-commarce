import 'package:comamarce/core/units/dio_factory.dart';
import 'package:comamarce/core/widgets/appbar_widget.dart';
import 'package:comamarce/features/authentication/presentation/view/register_view/widgets/register_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const SafeArea(
        child: RegisterViewBody(),
      ),
    );
  }
}





