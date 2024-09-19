import 'package:comamarce/features/home/data/repo/product_repo/product_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._productRepo) : super(const ProductState.initial());

  final ProductRepo _productRepo;

  void getProduct()async{
    emit(const ProductState.productLoading());
    var response = await _productRepo.getProduct();
    response.when(success: (productResponse){
      emit(ProductState.productSuccess(productResponse: productResponse));
    }, failure: (error){
      emit(ProductState.productError(error: error.failure.message ?? ''));
    });
  }





}
