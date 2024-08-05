import 'package:flutter/material.dart';
import 'package:foodie_app/utils/utils.dart';
import 'package:foodie_app/view/SignView.dart';
import 'package:foodie_app/view/bottomNavigationBar.dart';
import 'package:foodie_app/view/homeViewPage.dart';
import 'package:get/get.dart';

class MyLoginView extends StatelessWidget {
  const MyLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff0B1225),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/Frame 18.png",),fit: BoxFit.fill,)
        ),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: SingleChildScrollView(
          child: Column(
            children: [
               Container(
                // height: 240,
                margin: EdgeInsets.only(top: 40),
                child:Image.asset("assets/images/logo (3).png",scale: 0.7,)
               ),
               Container(
                child: utils.myText("Deliver Favourite Food",utils.myWhiteColor,22),
               ),
        
               Container(
                margin: EdgeInsets.only(top: 25,left: 20,right: 20),
                height: 410,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: utils.myloginColor,
                  borderRadius: BorderRadius.circular(24)),
                child: Column(
                  children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                     child: utils.myText("Login",utils.myWhiteColor,23),
                   ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: utils.myTextField('Enter your Email',Icon(Icons.person),false),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: utils.myTextField('Enter your Password',Icon(Icons.lock),true,eyeIcon: Icon(Icons.visibility_off,size: 30,)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                        margin: EdgeInsets.only(top: 0,right: 25),
                     child: utils.myText("Forget Password?",utils.myWhiteColor,16),
                   ),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        // Get.to(MyHomeViewPage());
                        Get.to(BottomNaviagtionBarPage());
                        
        
                      },
                      child: utils.myCustomButton("Login",),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 2),
                     child: utils.myText("or",utils.myPurpleColor,20),
                   ),
                   Container(
                    margin: EdgeInsets.only(top: 8),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(  child: Image.asset("assets/images/google-icon 1.png",), ),
                        SizedBox(width: 12,),
                        Container(  child: Image.asset("assets/images/facebook-3 1.png"), )
                      ],
                     ),
                   ),
                    
                  ],
                ),
               ),
               
              Container(
                        margin: EdgeInsets.only(top: 10),
                     child: utils.myText("Dont't have an account?",utils.myWhiteColor,16),
                   ),
                   InkWell(
                    onTap: (){
                       Get.to(MySignView());
                    },
                     child: Container(
                          margin: EdgeInsets.only(top: 2),
                       child: utils.myText("Register".toUpperCase(),utils.myWhiteColor,20),
                     ),
                   ),
        
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.sizeOf(context).height*0.02),
        
                      height: 6,
                      color: utils.myWhiteColor,
                       width: 150,
                   ),
        
        
            ],
          ),
        ),
      ),
    );
  }
}