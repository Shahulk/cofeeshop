import 'package:cofeeshop/models/coffeeshop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/homepages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => CoffeeShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}
