
import 'package:comamarce/features/authentication/presentation/view/change_new_password_view/widgets/change_password_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ChangePasswordBody(),
    );
  }
}



