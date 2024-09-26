import 'package:flutter/material.dart';

import 'widgets/my_account_view_body.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
      backgroundColor: Colors.grey[300],
      body: const SafeArea(
        child: MyAccountViewBody(),
      ),
    );
  }
}








