import 'package:comamarce/core/units/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/units/routing/app_routes.dart';
import '../../../../../core/widgets/appbar_widget.dart';
import 'widgets/login_view_body.dart';

class LoginView extends HookWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body:LoginViewBody(),
    );
  }
}





