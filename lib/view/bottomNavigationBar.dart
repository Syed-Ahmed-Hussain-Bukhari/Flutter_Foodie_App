

import 'package:flutter/material.dart';
import 'package:foodie_app/view/MenuScreen.dart';
import 'package:foodie_app/view/homeViewPage.dart';
import 'package:foodie_app/view/orderDetails.dart';
import 'package:foodie_app/view/resturantScreen.dart';

class   BottomNaviagtionBarPage extends StatefulWidget {
  const BottomNaviagtionBarPage({super.key});

  @override
  State<BottomNaviagtionBarPage> createState() => _BottomNaviagtionBarPage();
}

class _BottomNaviagtionBarPage extends State<BottomNaviagtionBarPage> {
   
   int selectedtab=0;
   List pages=[
    Center(
      child: MyHomeViewPage(),
    ),

    Center(
      child: MyresturantScreenpage(),
    ),

    Center(
      child: MyMenuScreen(),
    ),

    Center(
      child: MyOrderPage(),
    ),
   ];

   chnageTab(int index){
    setState(() {
      selectedtab=index;
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                 body :pages[selectedtab],
                 bottomNavigationBar: BottomNavigationBar(
                  
                  currentIndex: selectedtab,
                  onTap: (index) => chnageTab(index) ,
                  fixedColor: Colors.white,
                 
                  items: const [
                  
                  BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.white,),
                  label: "settings",backgroundColor: Color.fromARGB(255, 29, 29, 29)),
                  BottomNavigationBarItem(icon: Icon(Icons.table_restaurant,color: Colors.white,),
                  label: "Resturants",backgroundColor: Color.fromARGB(255, 29, 29, 29)),
                  BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                  label: "Carts",backgroundColor: Color.fromARGB(255, 29, 29, 29)),
                  BottomNavigationBarItem(icon: Icon(Icons.fire_truck_outlined,color: Colors.white,),
                  label: "orders",backgroundColor: Color.fromARGB(255, 29, 29, 29))
                 ],
                 
                 
                 ),
                 

    );
              
  }
}