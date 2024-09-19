
import 'package:comamarce/features/payment/presentation/views/widgets/payment_item_info.dart';
import 'package:comamarce/features/payment/presentation/views/widgets/total_price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../core/units/styles.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        decoration: ShapeDecoration(
            color:const Color(0xffEDEDED),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 66,left: 22,right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const ThankYouBody(),
              const SizedBox(height: 30,),
             const ThankYouDetailsCard(),
              SizedBox(
                height: ((MediaQuery.sizeOf(context).height*.12 +10)/2),
              ),
              const ThankYouDownBody(),
            ],
          ),
        ) ,
      ),
    );
  }
}

class ThankYouDetailsCard extends StatelessWidget {
  const ThankYouDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ) ,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23,vertical: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            const SizedBox(width: 10,),
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Credit Card',style: Styles.textStyle18w400,),
                Text('Mastercard **78',style: Styles.textStyle16,),
              ],
            ),
          ],
        ),

      ),
    );
  }
}

class ThankYouDownBody extends StatelessWidget {
  const ThankYouDownBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(FontAwesomeIcons.barcode,size:80,),
        Container(
          width: 113,
          height: 58,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1.50,color: AppColors.greenColor),
                borderRadius: BorderRadius.circular(15),
              )
          ),
          child: Center(child: GestureDetector(
            onTap: (){
              context.go(AppRoute.home);

            },
            child: Text('PAID',style: Styles.textStyle24w600.copyWith(
                color: AppColors.greenColor
            ),),
          )) ,
        ),
      ],
    );
  }
}

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children:
      [

      Text('Thank you!',style: Styles.textStyle25,),
      const SizedBox(height: 2,),
      Text('Your transaction was successful',style: Styles.textStyle20,textAlign: TextAlign.center,),
      const SizedBox(height: 42,),
      const PaymentItemInfo(
        text: 'Date',
        value: '01/24/2023',
      ),
      const SizedBox(height: 20,),
      const PaymentItemInfo(
        text: 'Time',
        value: '10:15 AM',
      ),
      const SizedBox(height: 20,),
      const PaymentItemInfo(
        text: 'To',
        value: 'Sam Louis',
      ),
      const Divider(
        height: 60,
        thickness: 2,
      ),
      const TotalPrice(title: 'ToTal', value: '50.79'),
    ],);
  }
}
