import 'package:bloc/bloc.dart';
import 'package:comamarce/core/di/dependecy_injection.dart';
import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/features/home/data/model/home_category_response.dart';
import 'package:comamarce/features/home/presentation/view/home_screen.dart';
import 'package:comamarce/features/home/presentation/view/product_widgets/bloc_builder_product_cart.dart';
import 'package:comamarce/features/home_view/data/grid_item_model.dart';
import 'package:comamarce/features/order_view/presentation/manager/cash_order_cubit/cash_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta/meta.dart';
import '../../../../features/favorite_view/presentation/views/favorite_view.dart';
import '../../../../features/my_account/presentation/views/my_account_view.dart';
import '../../../../features/order_view/presentation/views/order_view.dart';
part 'app_state_state.dart';

class AppCubit extends Cubit<AppStateState> {

  AppCubit() : super(AppStateInitial());
  int currentIndex = 2;
  int selectIndex=0;

  List<Widget> views = [
    //MyCartView(),
     const OrderView(),
    const BlocBuilderProductCart(),
   const HomeScreen(),
    const FavoriteView(),
    const MyAccountView(),
  ];
  List<Widget> appBar = const[
    Text('Home Page1'),
    Text('Order Detials'),
    Text('Home Page'),
    Text('Favorite'),
    Text('My Account'),
  ];
  List<Widget> icons = [
    const Icon(null),
    const Icon(null),
    const Icon(Icons.shopping_cart_sharp),
    const Icon(null),
    const Icon(Icons.settings),
  ];
  List <BottomNavigationBarItem> buttons = [
    const BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.box),
      label: '',
    ),
     BottomNavigationBarItem(
      icon: Image.asset('assets/icons/products.png'),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.ofWhiteColor
          ),
          child: Image.asset('assets/icons/home.png',color: Colors.black,))  ,
      label: '',
    ),
     BottomNavigationBarItem(
      icon: Image.asset('assets/icons/heart.png'),
      label: '',
    ),
     BottomNavigationBarItem(
      icon:Image.asset('assets/icons/user.png'),
      label: '',
    ),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeIndexButtonNavBar());
  }

  void changeScreen(int index) {
    views[currentIndex = index];
    emit(ChangeIndexWidget());
  }
}
