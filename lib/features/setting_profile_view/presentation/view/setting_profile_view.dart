import 'package:comamarce/core/widgets/appbar_widget.dart';
import 'package:comamarce/features/setting_profile_view/presentation/view/widgets/setting_profile_body.dart';
import 'package:flutter/material.dart';


class SettingProfileView extends StatelessWidget {
  const SettingProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(

      ),
      body: const SettingProfileBody(),
    );
  }
}


