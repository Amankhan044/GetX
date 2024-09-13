import 'package:flutter/material.dart';
import 'package:flutter_getx/examples/counter_example.dart';
import 'package:flutter_getx/examples/favourite_example.dart';
import 'package:flutter_getx/examples/slider_example.dart';
import 'package:flutter_getx/examples/switch_example.dart';
import 'package:flutter_getx/views/screenone_view.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('GetX')),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("GetX Dialog Alert"),
              subtitle: Text("Dialog Alert With GetX"),
              onTap: () {
                Get.defaultDialog(
                    titlePadding: EdgeInsets.only(top: 20),
                    title: "Delete Chat",
                    contentPadding: EdgeInsets.all(20),
                    middleText: "Are You Sure You Want To Delete This Chat",
                    textConfirm: 'Yes',
                    buttonColor: Colors.blue,
                    textCancel: 'No');
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("GetX Dialog Alert"),
              subtitle: Text("Dialog Alert With GetX"),
              onTap: () {
                Get.defaultDialog(
                  titlePadding: EdgeInsets.only(top: 20),
                  title: "Delete Chat",
                  contentPadding: EdgeInsets.all(20),
                  middleText: "Are You Sure You Want To Delete This Chat",
                  buttonColor: Colors.blue,
                  confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Yes")),
                  cancel: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("No")),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Bottom Sheet GetX"),
              subtitle: Text("Bottom Sheet with GetX"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red.shade400,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min, // Use min to fit content size
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                          onTap: () {
                            print("light theme");
                            Get.changeTheme(ThemeData.light());
                            Get.back(); // Close the bottom sheet
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                          onTap: () {
                            print("dark theme");
                            Get.changeTheme(ThemeData.dark());
                            Get.back(); // Close the bottom sheet
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("GetX Counter "),
              subtitle: Text("Example"),
              onTap: () {
                Get.to(CounterExample());
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("GetX Slider Example "),
              subtitle: Text("Go to Slider View"),
              onTap: () {
                Get.to(SliderExample());
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("GetX Switch Example "),
              subtitle: Text("Go to Switch View"),
              onTap: () {
                Get.to(() => SwitchExample());
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("GetX Favourite Example "),
              subtitle: Text("Go to Favourite View"),
              onTap: () {
                Get.to(() => FavouriteExample());
              },
            ),
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ScreenOne()));

                    Get.to(ScreenOne());
                  },
                  child: Text("Go To ScreenOne")))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Get.snackbar("GetX", "GetMaterialApp & Utils",
              backgroundColor: Colors.yellow.shade700,
              snackPosition: SnackPosition.BOTTOM,
              icon: Icon(Icons.add));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
