import 'package:flutter/material.dart';
import '../../../../../core/widgets/animated_rating.dart';


class CardImageItem extends StatelessWidget {
  const CardImageItem({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height:200,
            padding: const EdgeInsets.all(8),
            alignment: Alignment.topLeft,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage('productModel.data!.first.category!.image!'),
              ),
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.red,
              child: Text('Sale',style: TextStyle(color: Colors.white),),
            )
          ),
           const Padding(
             padding: EdgeInsets.symmetric(horizontal: 5.0),
             child: Row(
               children: [

                // Spacer(),
                 //CustomAddCardIcon(get: gridItemModel,backgroundColor: AppColors.ofWhiteColor,),

               ],
             ),
           ),

        ],
      ),
    );
  }
}