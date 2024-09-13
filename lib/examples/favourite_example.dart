import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/favourite_controller.dart';
import 'package:get/get.dart';

class FavouriteExample extends StatelessWidget {
  const FavouriteExample({super.key});

  @override
  Widget build(BuildContext context) {
    final FavouriteController favouriteController =
        Get.put(FavouriteController());

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Center(child: Text('Getx Favourite Example')),
      ),
      body: ListView.builder(
        itemCount: favouriteController.fruitItems.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (favouriteController.favouriteList
                  .contains(favouriteController.fruitItems[index].toString())) {
                favouriteController.removeFavouriteItem(
                    favouriteController.fruitItems[index].toString());
              } else {
                favouriteController.addFavouriteItem(
                    favouriteController.fruitItems[index].toString());
              }
            },
            child: Card(
              child: ListTile(
                title: Text(favouriteController.fruitItems[index].toString()),
                trailing: Obx(
                  () => Icon(
                    Icons.favorite,
                    color: favouriteController.favouriteList.contains(
                            favouriteController.fruitItems[index].toString())
                        ? Colors.red
                        : Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ));
  }
}
