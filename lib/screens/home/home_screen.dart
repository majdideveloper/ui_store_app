import 'package:flutter/material.dart';
import 'package:ui_store_app/config/themes.dart';
import 'package:ui_store_app/widgets/grid_view_widget.dart';
import 'package:ui_store_app/widgets/list_view_widget.dart';
import 'package:ui_store_app/widgets/widgets.dart';
import 'package:ui_store_app/models/product_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderWidgetHomeScreen(),
                SizedBox(
                  height: 30.0,
                ),
                TextFieldWidget(),
                SizedBox(
                  height: 30.0,
                ),
                ListViewWidget(),
                SizedBox(
                  height: 30.0,
                ),
                GridViewWidget(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: orangeColor,
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me_rounded ),
            label: "Near By",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
          ),
        ]),
      ),
    );
  }
}
