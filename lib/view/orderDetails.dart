import 'package:flutter/material.dart';
import 'package:foodie_app/utils/utils.dart';
import 'package:foodie_app/view/locationPage.dart';
import 'package:get/get.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/Frame 18.png",),fit: BoxFit.fill,)
          ),
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                 Row(
                   children: [
                     InkWell(
                     onTap: (){
                      Get.back();
                     },
                       child: Container(   
                        width: 55,        
                                  decoration: BoxDecoration(
                                      color: utils.myBlackColor,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  margin: EdgeInsets.all(20),
                                 
                                  padding: EdgeInsets.all(12),
                                  child: Center(child: Icon(Icons.arrow_back_ios,color: utils.myWhiteColor,size: 30,)),
                                ),
                     ),
                   ],
                 ),
                 Container(
                  margin: EdgeInsets.all(20),
                   child: Row(
                    children: [
                      utils.myText("Order Detail", utils.myWhiteColor, 30),
                    ],
                   ),
                 ),
                  
                 Container(
                  margin: EdgeInsets.all(12),
                   child: ListTile(
                    trailing: Container(
                      padding: EdgeInsets.all(10),
                      color: utils.myloginColor,
                      child: Icon(Icons.delete,color: utils.myWhiteColor,size: 25,),
                    ),
                    title:  utils.myText("\$52.00", utils.myWhiteColor, 19),
                    subtitle: utils.myText("Chicken veggi Salad", utils.myWhiteColor, 18),
                    leading:
                     Image.network("https://s3-alpha-sig.figma.com/img/ee1c/7165/d1d152424464e5559fc4281ce81ea410?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=TV2UJEZIlCd3m6VDMAwD3A6E3ON9jlR-JaOpH06oGYu8DTzM8U3Kh~Nu3uAm0s8AbH6hSa0LlSUAKdwJLb8XlVdrM1m4c03WCfCn1jADNmRmjRXzkNa~b6MIrVEhK-tLVHrrlwKdd8h-PeSS-gXpxX~T0iTymQSv7cK1~HyoZbNWfzE5zpJ7UvW5lukNV~l~50Ddk0OgvUk8BEjThJg7qMKJC0Hb3zfMTPhjqW2gzFFYO6wGJBf2dX47FIPZPRXViFI8znTIPkPvD2idn7s4eAf1bX9YK3LeAfpvXaOPdrlFWSN~nAF5gnXeRnVJ4jL2blO4APVFTuSELPSOBCOQyA__",scale: 0.02,)),
                  
                 ),
                  Container(
                  margin: EdgeInsets.all(12),
                   child: ListTile(
                    trailing: Container(
                      padding: EdgeInsets.all(10),
                      color: utils.myloginColor,
                      child: Icon(Icons.delete,color: utils.myWhiteColor,size: 25,),
                    ),
                    title:  utils.myText("\$23.00", utils.myWhiteColor, 19),
                    subtitle: utils.myText("Nutton Curry", utils.myWhiteColor, 18),
                    leading:
                     Image.network("https://s3-alpha-sig.figma.com/img/cb0d/08ad/388a9b850a0ab7d2b46798a2ae8c01b0?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WA1xXVKvR5OBe26wXmTqKaNd6WC2v2t~pwBPWPMxsIukRid3ziiuvaPP0DjH9rtXM9I~jUOowGM3RhFSyg9l4qD~LZQAv9DS3NUC4o0f2ENPlnhqbAbYy7FGph4le8ucAfAGngKNjv9nWb~55ILX3ErNvNHKDqEsrZuGuIZM27ceDsyJCMDq9g8Swzii7a8orI457sWo0dbDFcGp3-jYFAb7ZFesUDQkGsv4OBH9iJrTEMAmWlfOmZnZ937QROJgUdXxiNzIFbVDbPpX2LWh11~vaH8UnAV8MB~qU6OgfARp2bNizrIR~wUjWQExUwMh3VKuIrKB4fRMsvhWY2H8xw__",scale: 0.02,)),
                  
                 ),
                  Container(
                  margin: EdgeInsets.all(12),
                   child: ListTile(
                    trailing: Container(
                      padding: EdgeInsets.all(10),
                      color: utils.myloginColor,
                      child: Icon(Icons.delete,color: utils.myWhiteColor,size: 25,),
                    ),
                    title:  utils.myText("\$21.00", utils.myWhiteColor, 19),
                    subtitle: utils.myText("French Fry", utils.myWhiteColor, 18),
                    leading:
                     Image.network("https://s3-alpha-sig.figma.com/img/bf91/ddf7/41465d7ceae68bb4bb9c09375cef3ac9?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SprspuvyK9gYVe1HpuDhyUKV7h00pVMCWGJpXhCCsr6XySYGhEKv3P8q3SpGyOFOXDX3NoBKKNyohVhM80DQVYbSWsfBI0Hu32QllD5EHl30l-7tM54XBY1xkldQV8iMOjYbnDlZQXu3tiRLgMkLDA1i2i~RmHnoJKe21FLYldF4wo56bT~eU0UXBknt~IeXUkcxM5zjg~LPIH~8CzUcP9m1QL4hl4eE4LQiwJ3GCnuK7fuQNuEehbQzq02g3O-iDUeo84E1xOarYOczBcZL8O9Z6HpniSzV~pmVGfRveZm88gnbPZgiyzW41bGQsvPZod9d0qN0ZQrI713tPi3auw__",scale: 0.02,)),
                  
                 ),
                   Container(
                       margin: EdgeInsets.only(left: 20,right: 20,top: 26),
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: utils.myloginColor,
                        borderRadius: BorderRadius.circular(25)
                      ),
                    child: Column(
                      children: [
                        ListTile(
                      title: utils.myText("SubTotal", utils.myWhiteColor, 20),
                      trailing:utils.myText("\$96.00", utils.myWhiteColor, 20),
                     ),
                      ListTile(
                      title: utils.myText("Delivery", utils.myWhiteColor, 20),
                      trailing: utils.myText("\$2.00", utils.myWhiteColor, 20),
                     ),
                      ListTile(
                      title: utils.myText("Total", utils.myWhiteColor, 20),
                      trailing: utils.myText("\$98.00", utils.myWhiteColor, 20),
                     ),
                    InkWell(
                      onTap: (){
                        Get.to(MylocationPage());
                      },child:  utils.myCustomButton("CheckOut"),
                    )
                      ],
                    ),
                   )
              ],
            ),
          ),
      ),
    );
  }
}