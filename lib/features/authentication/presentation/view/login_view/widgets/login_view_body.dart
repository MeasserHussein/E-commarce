import 'package:animated_loading_border/animated_loading_border.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:comamarce/features/authentication/presentation/view/login_view/widgets/login_bloc_builder.dart';
import 'package:comamarce/features/authentication/presentation/view/login_view/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/design_auth_container.dart';
import 'featured_login_view_widget.dart';
import 'login_bloc_builder_error_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: AnimatedLoadingBorder(
          borderColor: Colors.black,
          cornerRadius: 22,
          child: DesignAuthContainer(
            widget: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  children: [
                    AnimatedTextKit(
                        totalRepeatCount: 100000,
                        pause: const Duration(seconds: 6),
                        animatedTexts: [
                          TyperAnimatedText('Welcome Login',

                              textAlign: TextAlign.center,
                              textStyle: Styles.textStyle24w600.copyWith(
                                color: AppColors.primaryBlueColor,
                              )),
                        ]),
                    const SizedBox(height: 20,),
                    const LoginBlocBuilderErrorView(),
                    const LoginBlocBuilder(),
                    const SizedBox(height: 5,),
                    const FeaturedLoginViewBody(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// AnimatedTextKit(
// animatedTexts: [
// TypewriterAnimatedText(
// 'Hello world!',
// textStyle: const TextStyle(
// fontSize: 32.0,
// fontWeight: FontWeight.bold,
// ),
// speed: const Duration(milliseconds: 2000),
// ),
// ],
//
// totalRepeatCount: 4,
// pause: const Duration(milliseconds: 1000),
// displayFullTextOnTap: true,
// stopPauseOnTap: true,
// )


//_____________________________________________________________________//
// const SizedBox(height: 10),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     IconButton(
//         onPressed: () {},
//         icon: const Icon(
//           FontAwesomeIcons.facebook,
//           color: Colors.blue,
//           size: 40,
//         )),
//     IconButton(
//         onPressed: () {},
//         icon: const Icon(
//           FontAwesomeIcons.google,
//           color: Colors.red,
//           size: 40,
//         )),
//   ],
// ),
// const SizedBox(height: 20),
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Expanded(
//       child: Container(
//         height: 1,
//         color: AppColors.black12Color,
//       ),
//     ),
//      Text(
//       '  or  ',
//       style: Styles.textStyle18w400.copyWith(
//         color: AppColors.black12Color
//       ),
//     ),
//     Expanded(
//       child: Container(
//         height: 1,
//         color: AppColors.black12Color,
//       ),
//     ),
//   ],
// ),
// const SizedBox(height: 20),