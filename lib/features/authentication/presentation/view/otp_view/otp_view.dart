import 'package:comamarce/features/authentication/presentation/view/otp_view/widgets/otp_view_body.dart';
import 'package:flutter/material.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  const OtpViewBody(),
    );
  }
}




