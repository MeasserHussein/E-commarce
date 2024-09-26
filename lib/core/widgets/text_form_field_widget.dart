import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../units/app_colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.controller,
     this.validator,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.labelText,
    this.hintColor = AppColors.primaryBlueColor,
    this.fontWeight= FontWeight.bold,
    this.borderRadius,
    this.indexLenght,
    this.maxLength,
    this.onChange,
    this.onTap,
    this.enabled=true,
    this.textInputAction=TextInputAction.next,
    this.prefixIcon, this.contentPadding, this.isObscureText,
  });

  final String hintText;
  final String? labelText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final FormFieldValidator? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? hintColor;
  final FontWeight? fontWeight;
  final BorderRadius? borderRadius;
  final int? indexLenght;
  final int? maxLength;
  final ValueChanged<String>? onChange;
  final GestureTapCallback? onTap;
  final TextInputAction? textInputAction;
  final bool? enabled;
  final EdgeInsetsGeometry? contentPadding;
  final bool? isObscureText;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText ?? false,
      // enabled: enabled,
      //  focusNode: FocusNode(),
      onTap: onTap,
      textInputAction: textInputAction,
      onChanged: onChange,
      maxLength:maxLength ,
      inputFormatters: [
        LengthLimitingTextInputFormatter(indexLenght),
      ],
      cursorColor: AppColors.primaryBlueColor,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        labelText: labelText,
        labelStyle: const TextStyle(
            color: AppColors.primaryBlueColor, fontWeight: FontWeight.bold),
        hintStyle: TextStyle(color: hintColor, fontWeight: fontWeight),
        hintText: hintText,
        enabledBorder: buildOutlineInputBorder(Colors.black26,borderRadius),
        focusedBorder: buildOutlineInputBorder(AppColors.primaryBlueColor,borderRadius),
        errorBorder: buildOutlineInputBorder(Colors.red,borderRadius),
        focusedErrorBorder: buildOutlineInputBorder(Colors.red,borderRadius),
      ),
      keyboardType: keyboardType,
      validator: validator,
      scrollPadding:  EdgeInsets.only(bottom:150.h),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color,borderRadius]) {
    return OutlineInputBorder(
      borderRadius:borderRadius??BorderRadius.circular(4) ,
      borderSide: BorderSide(
        color: color ?? AppColors.primaryColor,
      ),
    );
  }
}
