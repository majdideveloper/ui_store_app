import 'package:flutter/material.dart';

class ProductModel {
  final String name;
  final double price;
  final String imageUrl;
  final String details;
  final int reviews;
  final double stars;
  final List<String> listImages;
  final List<Color> listColors;
  final List<String> listSizes;
  ProductModel({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.details,
    required this.reviews,
    required this.stars,
    required this.listImages,
    required this.listColors,
    required this.listSizes,
  });

  static List<ProductModel> products = [
    ProductModel(
        name: 'Nike Air Force',
        price: 50.00,
        imageUrl: "assets/images/Mask1.png",
        details:
            'Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.',
        reviews: 15,
        stars: 4.5,
        listImages: [
          "assets/images/Mask1.png",
          "assets/images/Mask2.png",
          "assets/images/Mask3.png",
        ],
        listColors: [
          Colors.black,
          Colors.grey,
          Colors.white,
          Colors.brown,
        ],
        listSizes: [
          'M',
          'L',
          'S'
        ]),
        ProductModel(
        name: 'Nike Air Force',
        price: 50.00,
        imageUrl: "assets/images/Mask2.png",
        details:
            'Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.',
        reviews: 15,
        stars: 4.5,
        listImages: [
          "assets/images/Mask1.png",
          "assets/images/Mask2.png",
          "assets/images/Mask3.png",
        ],
        listColors: [
          Colors.black,
          Colors.grey,
          Colors.white,
          Colors.brown,
        ],
        listSizes: [
          'M',
          'L',
          'S'
        ]),ProductModel(
        name: 'Nike Air Force',
        price: 50.00,
        imageUrl: "assets/images/Mask3.png",
        details:
            'Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.',
        reviews: 15,
        stars: 4.5,
        listImages: [
          "assets/images/Mask1.png",
          "assets/images/Mask2.png",
          "assets/images/Mask3.png",
        ],
        listColors: [
          Colors.black,
          Colors.grey,
          Colors.white,
          Colors.brown,
        ],
        listSizes: [
          'M',
          'L',
          'S'
        ]),
        ProductModel(
        name: 'Nike Air Force',
        price: 50.00,
        imageUrl: "assets/images/Mask4.png",
        details:
            'Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.',
        reviews: 15,
        stars: 4.5,
        listImages: [
          "assets/images/Mask1.png",
          "assets/images/Mask2.png",
          "assets/images/Mask3.png",
        ],
        listColors: [
          Colors.black,
          Colors.grey,
          Colors.white,
          Colors.brown,
        ],
        listSizes: [
          'M',
          'L',
          'S'
        ]),
  ];
}
