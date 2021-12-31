import 'package:flutter/material.dart';
import 'package:ui_store_app/config/themes.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 52.0,
          padding: EdgeInsets.only(right: 8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: orangeColor,
                width: 3.0,
              )),
              hintText: 'Search',
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
            ),
          ),
        )),
        Container(
          height: 52.0,
          decoration: BoxDecoration(
              color: blackColor, borderRadius: BorderRadius.circular(12.0)),
          child: IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}
