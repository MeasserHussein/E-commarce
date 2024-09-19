import 'package:comamarce/core/widgets/appbar_widget.dart';
import 'package:comamarce/features/authentication/presentation/view/manager_login_view/widgets/manager_login_view_body.dart';
import 'package:flutter/material.dart';


class ManagerLoginView extends StatelessWidget {
  const ManagerLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const ManagerLoginViewBody(),
    );
  }
}


