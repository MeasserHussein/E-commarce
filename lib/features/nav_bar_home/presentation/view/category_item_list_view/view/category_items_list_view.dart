import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/nav_bar_home/presentation/manager/category_items_cubit/category_items_cubit.dart';
import 'package:comamarce/features/nav_bar_home/presentation/manager/category_items_cubit/category_items_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/category_item_list_view.dart';


class CategoryItemsListViewView extends StatelessWidget {
  const CategoryItemsListViewView({super.key,});



  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(),
            body: SafeArea(
              child: BlocBuilder<CategoryItemsCubit, CategoryItemsState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    categoryItemsLoading: ()=> const CircularProgressIndicator(),
                      categoryItemsSuccess: (home){
                      if(home.data!.isNotEmpty){
                        return CategoryItemsListView(dataCategory: home.data ?? [], );
                      }
                       else {
                        return Center(child: Text('No Data',style: Styles.textStyle30.copyWith(color: Colors.red),));
                      }
                      },
                      orElse: ()=>const SizedBox.shrink(),
                  );
                },
              ),
            ),
          );
        }
    );
  }
}





