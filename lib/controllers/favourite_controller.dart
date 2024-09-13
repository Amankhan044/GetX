import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitItems =
      <String>['Apple', 'Mango', 'Bannana', 'Pineapple', 'Watermelon'].obs;

  RxList<dynamic> favouriteList = <dynamic>[].obs;

  void addFavouriteItem(String value) {
    favouriteList.add(value);
  }

  void removeFavouriteItem(String value) {
    favouriteList.remove(value);
  }
}
