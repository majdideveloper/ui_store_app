import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_store_app/config/themes.dart';
import 'package:ui_store_app/models/product_model.dart';

class DetailScreen extends StatelessWidget {
  ProductModel product;
  DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(product.imageUrl),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: FaIcon(FontAwesomeIcons.arrowLeft)),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.heart)),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20.0,
                  left: 150.0,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 1,
                    count: 3,
                    effect: WormEffect(
                      dotColor: greyColor,
                      activeDotColor: blackColor,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        '\$${product.price.toString()}0',
                        style: TextStyle(
                            color: orangeColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: orangeColor,
                      ),
                      Text(
                        '4.5 (15 Review)',
                        style: TextStyle(
                          color: orangeColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Details',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    product.details,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Colors',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                   
                  child: InkWell(
                    onTap: () {
                      //print('called on tap');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 6.0,left: 6.0,
                      bottom: 4.0),
                      child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: orangeColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Bottom Button',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ],
              ),
            )
          ],
        ),
        
      ),
    );
  }
}
