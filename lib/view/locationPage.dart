import 'package:flutter/material.dart';
import 'package:foodie_app/utils/utils.dart';
import 'package:foodie_app/view/trackOrderPage.dart';
import 'package:get/get.dart';

class MylocationPage extends StatelessWidget {
  const MylocationPage({super.key});

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
                      utils.myText("Find Location", utils.myWhiteColor, 30),
                    ],
                   ),
                 ),
                 Container(
                  margin: EdgeInsets.all(12),
                  child: utils.myTextField("Find your Location", Icon(Icons.search), false),

                  
                 ),
                 Image.network("https://s3-alpha-sig.figma.com/img/c4e5/bbef/c1bda3c853cbfc4fa85b0ffc1221c682?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=VN1Hg1ecdWe1WFobXx6vIdq5R-dbraDPnCIYeOQg~pDkLmQF0CXnG6FX4IRPVIlI-M-59xobE7SP5cm9kLhJ-uTdJMl-yQLm6TRZJaeFvtJcRa1ormjtOzJzCh0aejSx9JS6fNdMGr59~s7CEVJhS0ZGiBst3gDgUCH0B2zNJPgfIzkeowbOBTmUnEW3PEne-KVeOlG1RaEpK6Ld1w6QeJHm8qXLLakNEa5uSTQKA9TChVg2CJZaUvaA9o4cpm1Jeh1hZ~6mM6UWwJmkdYRdL~ExI34wSDIMn~SLPiPIKsYyl8~auMarB7jZz5nCv9K2S0OKiZC5EnHaHfFqkmWdMg__"),

                 Container(
                       margin: EdgeInsets.only(left: 20,right: 20,top: MediaQuery.sizeOf(context).height*0.02),
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: utils.myloginColor,
                        borderRadius: BorderRadius.circular(25)
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                     Container(
                                  margin: EdgeInsets.only(left: 12),
                                  child: utils.myText("Your Location", utils.myGreyColor, 20),
                                ),
                                 Container(
                                  margin: EdgeInsets.only(left: 12),
                                  child: utils.myText("Karachi, Gulshan-e-Iqbal", utils.myWhiteColor, 20),
                                ),
                    InkWell(
                      onTap: (){
                        Get.to(MyTrackOrderPage());
                      },child:  utils.myCustomButton("Set Location"),
                    )
                      ],
                    ),
                   ),

                 
                  

            ],
          ),
        ),
      ),
    );
  }
}