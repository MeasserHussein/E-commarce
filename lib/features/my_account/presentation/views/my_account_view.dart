import 'package:comamarce/features/home/presentation/view/home_skeleton/home_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/widgets/appbar_widget.dart';
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








