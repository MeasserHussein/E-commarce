import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../nav_bar_home/presentation/manager/cash_order_cubit/cash_order_cubit.dart';

class SelectedRadioWidget extends StatefulWidget {
  const SelectedRadioWidget({super.key});

  @override
  State<SelectedRadioWidget> createState() => _SelectedRadioWidgetState();
}


class _SelectedRadioWidgetState extends State<SelectedRadioWidget> {

  void _handleRadioValueChange(int? value) {
    var cubit = context.read<CashOrderCubit>();
    setState(() {
      // If the current value is already selected, deselect it (toggle off)
      if (cubit.selectedValue == value) {
        cubit.selectedValue = null; // Deselect the radio button
      } else {
        cubit.selectedValue = value; // Select the new value
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CashOrderCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'visa',
          style: Styles.textStyle20,
        ),
        Radio<int>(
            activeColor: AppColors.primaryBlueColor,
            value: 1,
            groupValue: cubit.selectedValue,
            onChanged: _handleRadioValueChange),
        SizedBox(
          width: 50.w,
        ),
        Text('cash', style: Styles.textStyle20),
        Radio<int>(
            activeColor: AppColors.primaryBlueColor,
            value: 2,
            groupValue: cubit.selectedValue,
            onChanged: _handleRadioValueChange),
      ],
    );
  }
}
