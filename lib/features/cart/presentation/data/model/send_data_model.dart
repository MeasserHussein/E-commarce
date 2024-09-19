class SendDataModel{
 final int index;
 final int price;

  SendDataModel({required this.index, required this.price});


 int get finalPriceTotal =>index * price;
}