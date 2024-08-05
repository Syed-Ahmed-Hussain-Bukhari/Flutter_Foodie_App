import 'package:flutter/material.dart';
import 'package:foodie_app/view/MenuScreen.dart';
import 'package:foodie_app/view/SignView.dart';
import 'package:foodie_app/view/homeViewPage.dart';
import 'package:foodie_app/view/loginView.dart';
import 'package:foodie_app/view/orderDetails.dart';
import 'package:foodie_app/view/resturantScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyLoginView(),
    );
  }
}

