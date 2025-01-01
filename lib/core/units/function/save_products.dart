import 'package:hive/hive.dart';

import '../../../features/nav_bar_home/data/model/home_category_response.dart';

void saveBookData(List<DataCategory> books,String boxName) {
  var box= Hive.box<DataCategory>(boxName);

  box.addAll(books);
}