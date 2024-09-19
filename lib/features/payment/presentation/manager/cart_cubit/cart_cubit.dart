import 'package:bloc/bloc.dart';
import 'package:comamarce/features/home_view/data/grid_item_model.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  int index=0;
  int? total;

  dynamic addIndex(GridItemModel items){
    int total1;
    index++;
   total1=items.newPrice*index;
   total=total1;
    emit(CartSuccess());
  }
  dynamic decIndex(GridItemModel items){
    if(index>=2){
      int total1;
      index--;
      total1=items.newPrice*index;
      total=total1;
      emit(CartSuccess());
    }
  }

   totalCarts(GridItemModel grid){

  }

}
