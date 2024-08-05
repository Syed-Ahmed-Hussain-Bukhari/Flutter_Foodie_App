import 'package:flutter/material.dart';
import 'package:foodie_app/utils/utils.dart';
import 'package:get/get.dart';

class MyTrackOrderPage extends StatelessWidget {
  const MyTrackOrderPage({super.key});

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
                      utils.myText("Track Order", utils.myWhiteColor, 30),
                    ],
                   ),
                 ),

                 Container(margin: EdgeInsets.all(20),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        utils.myText(" Order id: 45003856773", utils.myWhiteColor, 16),
                         utils.myText("Today", utils.myWhiteColor, 16),
                    ],
                   ),
                 ),
                 Container(
                       margin: EdgeInsets.only(left: 20,right: 20,top: MediaQuery.sizeOf(context).height*0.02),
                      height: 400,
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
                                  child: utils.myText("Mr Saad", utils.myGreyColor, 20),
                                ),
                                 Container(
                                  margin: EdgeInsets.only(left: 12),
                                  child: utils.myText("25 min on the way", utils.myWhiteColor, 20),
                                ),

                     Image.network("https://s3-alpha-sig.figma.com/img/65ac/8a77/449a792bc136f4d8b1508444226323ba?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RIZw65hIEZDw0zuKXSycI0990cOEHKjeCRgT2Rf8IBDnj6NMugOMHS6M4el7wqN~JZvRcNJSG8DDgk~-6sEggLZIoGjyYyL8KW1esxQuNpXzSe83M~KoSrAkqGpM2S8WKhRKwrp2e5eq7fNOiXRv8Sry620~1~0t21adINzXudCJ9mSaZGtVIy~azxc8kNbwhukX7F4~gasXjHwZr8vfrhY7jxOl8iVioBgHTfYr5rWvzHvlQCtQb4IX65WjgHm3-a4c-Gv8B1Szbh0R1qfxuWBxYolwZ5Jkg0vzlrisXLYYaN~6c2-0Fn8CyET7yUnDBGzdsUkJFyOdlifw9nPnQQ__",scale: 2,),
                    InkWell(
                      onTap: (){
                        Get.to(MyTrackOrderPage());
                      },child:  utils.myCustomButton("Call"),
                    )
                      ],
                    ),
                   ),
          ],
        ),
      ),
    ));
  }
}