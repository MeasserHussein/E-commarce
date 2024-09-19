import 'package:comamarce/core/di/dependecy_injection.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/features/authentication/presentation/manager/change_password/change_password_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/forget_password_cubit/forget_password_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/otp_cubit/otp_code_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:comamarce/features/authentication/presentation/view/change_new_password_view/change_password_view.dart';
import 'package:comamarce/features/authentication/presentation/view/manager_login_view/manager_login_view.dart';
import 'package:comamarce/features/authentication/presentation/view/otp_view/otp_view.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_cubit.dart';
import 'package:comamarce/features/favorite_view/presentation/manager/favorite_cubit.dart';
import 'package:comamarce/features/home/data/model/home_category_response.dart';
import 'package:comamarce/features/home/data/model/product_response_model/product_response.dart';
import 'package:comamarce/features/home/presentation/manager/brands_cubit/brands_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/category_items_cubit/category_items_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/home_category_cubit/home_category_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/product_cubit.dart';
import 'package:comamarce/features/home/presentation/view/category_item_list_view/view/category_items_list_view.dart';
import 'package:comamarce/features/cart/presentation/views/another_my_cart_view/anther_card_view.dart';
import 'package:comamarce/features/order_view/data/model/chash_order_response/cash_order_response.dart';
import 'package:comamarce/features/order_view/presentation/manager/cash_order_cubit/cash_order_cubit.dart';
import 'package:comamarce/features/review_view/presentation/view/widgets/review_view.dart';
import 'package:comamarce/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../features/authentication/presentation/view/forget_password_view/forget_password_view.dart';
import '../../../features/authentication/presentation/view/login_view/login_view.dart';
import '../../../features/authentication/presentation/view/register_view/register_view.dart';
import '../../../features/favorite_view/presentation/views/favorite_view.dart';
import '../../../features/home_view/presentation/views/details_view.dart';
import '../../../features/home_view/presentation/views/home_buttom_nav_bar.dart';
import '../../../features/my_account/presentation/views/my_account_view.dart';
import '../../../features/order_view/presentation/views/order_view.dart';
import '../../../features/cart/presentation/views/my_cart_view/my_cart_view.dart';
import '../../../features/payment/presentation/views/payment_details_view.dart';
import '../../../features/payment/presentation/views/thank_you_view.dart';
import '../../../features/setting_profile_view/presentation/view/setting_profile_view.dart';
import 'app_routes.dart';

class AppRouter {
  final CashOrderResponse cashOrderResponse;
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
          path: AppRoute.splash,
          builder: (context, state) => const SplashView()),
      GoRoute(
          path: AppRoute.login,
          builder: (context, state) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginView(),
              )),
      GoRoute(
          path: AppRoute.managerLogin,
          builder: (context, state) => const ManagerLoginView()),
      GoRoute(
          path: AppRoute.register,
          builder: (context, state) => BlocProvider(
                create: (context) => getIt<SignupCubit>(),
                child: const RegisterView(),
              )),
      GoRoute(
          path: AppRoute.forgetPassword,
          builder: (context, state) => BlocProvider(
                create: (context) => getIt<ForgetPasswordCubit>(),
                child: const ForgetPasswordView(),
              )),
      GoRoute(
        path: AppRoute.resetPassword,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<OtpCodeCubit>(),
          child: const OtpView(),
        ),
      ),
      GoRoute(
          path: AppRoute.changePassword,
          builder: (context, state) => BlocProvider(
                create: (context) => getIt<ChangePasswordCubit>(),
                child: const ChangePasswordView(),
              )),
      GoRoute(
          path: AppRoute.home,
          builder: (context, state) => MultiBlocProvider(providers: [
                BlocProvider(
                  create: (context) =>
                      HomeCategoryCubit(getIt())..getCategory(),
                ),
                BlocProvider(
                  create: (context) => BrandsCubit(getIt())..getBrands(),
                ),
                BlocProvider(
                  create: (context) => ProductCubit(getIt())..getProduct(),
                ),
                BlocProvider(
                  create: (context) => AddToCartCubit(getIt()),
                ),
                BlocProvider(
                  create: (context) => FavoriteCubit(getIt())
                    ..getFavorite(SharedPrefKeys.userToken),
                ),
                BlocProvider(
                  create: (context) =>
                      LoginCubit(getIt())..getToken(SharedPrefKeys.userToken),
                ),
                BlocProvider(
                  create: (context) =>
                      CashOrderCubit(getIt())..getOrders(SharedPrefKeys.userId),
                ),
              ], child: const HomeButtonNavBar())),
      GoRoute(
          path: AppRoute.detailsView,
          builder: (context, state) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => CartItemCubit(getIt())
                      ..getCart(SharedPrefKeys.userToken),
                  ),
                  BlocProvider(create: (context) => AddToCartCubit(getIt()))
                ],
                child: DetailsView(
                  data: state.extra as ProductData,
                ),
              )),
      GoRoute(
          path: AppRoute.myAccount,
          builder: (context, state) => const MyAccountView()),
      GoRoute(
          path: AppRoute.settingProfile,
          builder: (context, state) => const SettingProfileView()),
      GoRoute(
          path: AppRoute.favorite,
          builder: (context, state) => const FavoriteView()),
      GoRoute(
          path: AppRoute.myCart,
          builder: (context, state) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => CartItemCubit(getIt())
                      ..getCart(SharedPrefKeys.userToken),
                  ),
                  BlocProvider(
                    create: (context) => CashOrderCubit(getIt()),
                  ),
                ],
                child: const MyCartView(),
              )),
      GoRoute(
          path: AppRoute.anotherMyCart,
          builder: (context, state) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => CartItemCubit(getIt())
                      ..getCart(SharedPrefKeys.userToken),
                  ),
                  BlocProvider(
                    create: (context) => CashOrderCubit(getIt(),),
                  ),
                ],
                child: const AntherCardView(),
              )),
      GoRoute(
          path: AppRoute.paymentDetails,
          builder: (context, state) => const PaymentDetailsView()),
      GoRoute(
          path: AppRoute.thankYou,
          builder: (context, state) => const ThankYouView()),
      GoRoute(
          path: AppRoute.review,
          builder: (context, state) => const ReviewView()),
      GoRoute(
        path: AppRoute.categoryItem,
        builder: (context, state) => BlocProvider(
          create: (context) => CategoryItemsCubit(getIt())
            ..getCategoryItems(state.extra as DataCategory),
          child: const CategoryItemsListViewView(),
        ),
      ),
    ],
  );

  AppRouter({required this.cashOrderResponse});
}
