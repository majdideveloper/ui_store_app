import 'package:flutter/material.dart';
import 'package:ui_store_app/config/themes.dart';

class ListViewWidget extends StatelessWidget {
  List<String> types = ["All", 'Nike', 'Adidas', 'Converse', "Puma"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.0,
      width: double.infinity,
      color: Colors.white,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return (index == 0)
                ? buildContainer(index,whiteColor , blackColor)
                :buildContainer(index,blackColor , whiteColor);
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 5.0,
            );
          },
          itemCount: types.length),
    );
  }

  Widget buildContainer(index,colorText,colorBackground) => Container(
        width: 80.0,
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            types[index],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13.0, color:colorText),
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            color: colorBackground,
            borderRadius: BorderRadius.circular(12.0)),
      );
}
