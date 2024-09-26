import 'package:flutter/material.dart';

class GridItemModel {
  final int id;
  final String image;
  final String title;
  final String supTitle;
  final int newPrice;
  final int oldPrice;
  final double rate;
  final int discount;
  final int shipping;
  late Offset position;

   GridItemModel( {
     required this.id,
    this.oldPrice = 0,
    required this.image,
    required this.title,
    required this.supTitle,
    required this.newPrice,
    required this.rate,
    required this.discount,
    required this.shipping,
     this.position=const Offset(100,100),
  });

  int get finalPrice =>(-discount) + shipping;
  int get finalPriceTotal =>newPrice+(-discount) + shipping;

// double get finalPrice => (newPrice - discount + shipping);

// double finalPrice1(){
//   return double.parse(newPrice) - double.parse(discount) + double.parse(shipping);
// }
}
