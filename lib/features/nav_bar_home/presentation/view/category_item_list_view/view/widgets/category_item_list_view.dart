import 'package:comamarce/features/nav_bar_home/data/model/home_category_response.dart';
import 'package:comamarce/features/nav_bar_home/presentation/view/category_item_list_view/view/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryItemsListView extends StatelessWidget {
  const CategoryItemsListView({super.key, required this.dataCategory});

  final List<DataCategory?> dataCategory;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: dataCategory.length,
        itemBuilder: (context, index) {
          return CategoryItem(dataCategory: dataCategory[index]!);
        });
  }
}