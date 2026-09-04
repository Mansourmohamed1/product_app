import 'package:flutter/material.dart';
import 'package:product_app/screen/productDetailPage.dart';

void main() {
  runApp(const ProductApp());
}

class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Detail',
      home: const ProductDetailPage(),
    );
  }
}

