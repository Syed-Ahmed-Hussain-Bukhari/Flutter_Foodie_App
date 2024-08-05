import 'package:flutter/material.dart';
import 'package:foodie_app/utils/utils.dart';
import 'package:foodie_app/view/orderDetails.dart';
import 'package:get/get.dart';

class MyMenuScreen extends StatelessWidget {
  const MyMenuScreen({super.key});

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
            child: Stack(
              children: [
          
                Image.network("https://s3-alpha-sig.figma.com/img/6d68/1b79/6a18984e65847b42db9b71ccce98c66c?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=clabG3Re~Ox-jNGqBXBYmQm7hDl9w96uvbJY2dufvctLXdrasxclZu9hlsaLYGgaKySkvtJH05qOIGxWJ~kbA26aBoAakdZxJK6OI~rz-N1xdVSJJJgPs1m5tRRWhKIfiln46MM8IDAVEhx27iZS6WpuhtpvQgQ6MRDS7fk-bPODljU6--DQmNa4PTrrmi1tQeaJAGHvfAZ-Har1BnhuzHZAQ1~E-yUoo2bttDC6Z6u33gJZ5rxZDxWG~-9m3SJw6XnC2z0PI9irxNvTJmwoWTUAJMxh-8aWEBAooADsTQjePxikZJSObVwSfGFqM6VQH9YIU5pHM375XnA0eC6qBQ__"),
                 Column(
                  children: [
                      Container(
                        margin: EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){
                                Get.back();
                              },
                              child: Container(
                               
                                decoration: BoxDecoration(
                                    color: utils.myBlackColor,
                                    border: Border.all(width: 1.5,
                                    color: utils.myWhiteColor),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                margin: EdgeInsets.all(20),
                               
                                padding: EdgeInsets.all(12),
                                child: Center(child: Icon(Icons.arrow_back_ios,color: utils.myWhiteColor,size: 20,)),
                              ),
                            ),
                            SizedBox(width: 100,),
                            Row(
                              children: [
                                 Container(
                                
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.5,
                                  color: utils.myWhiteColor),
                                  color: utils.myBlackColor,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              margin: EdgeInsets.all(20),
                             
                              padding: EdgeInsets.all(12),
                              child: Center(child: Icon(Icons.favorite,color: utils.myWhiteColor,size: 20,)),
                            ),
                      
                             Container(
                             
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.5,
                                  color: utils.myWhiteColor),
                                  color: utils.myBlackColor,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              margin: EdgeInsets.only(top: 20,left: 5,right: 5,bottom: 20),
                             
                              padding: EdgeInsets.all(12),
                              child: Center(child: Icon(Icons.more_horiz,color: utils.myWhiteColor,size: 20,)),
                            ),
                              ],
                            )
                          ],
                        ),
                      ),
          
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 185),
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: utils.myloginColor,
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(20),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: utils.myBlackColor,
                                    child: Icon(Icons.star,color: utils.myWhiteColor,size: 40,),
                                  ),
                                ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Container(
                          margin: EdgeInsets.only(top: 2),
                       child: utils.myText("Udino Miso",utils.myGreyColor,22),
                     ),
                      Container(
                          margin: EdgeInsets.only(top: 2),
                       child: utils.myText("\$16:00",utils.myWhiteColor,18),
                     ),
            ],
                   ),
                              ],
                            ),
                            Divider(
                              height: 1,
                            ),
          
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Row(
                                children: [
                                Container(
                                margin: EdgeInsets.only(top: 2,left: 8,),
                                                     child: utils.myText("Everything you need to know about \n restaurant text marketing and links \n to extra resources on specific topics.",utils.myGreyColor,15),
                              ), 
                                ],
                              ),
                            ),
                            Container(
                              width: 155,
                             padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.5,
                                  color: utils.myWhiteColor),
                                  color: utils.myBlackColor,
                                borderRadius: BorderRadius.circular(20)
                              ),
                             child: Row(
                              children: [
                                SizedBox(width: 15,),
                               Icon(Icons.remove,color: utils.myWhiteColor,),
                                SizedBox(width: 12,),
                                utils.myText("1", utils.myWhiteColor, 20),
                                SizedBox(width: 12,),
                                Icon(Icons.add,color: utils.myWhiteColor,),
                                SizedBox(width: 10,),
                              ],
                             ),
                            ),
                          ],
                        ),
                      ),
                      
                     Container(
                      margin: EdgeInsets.only(left: 25,right: 25,bottom: 25,top: 12),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           utils.myText("Noodle type", utils.myWhiteColor, 20),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.5,
                                  color: utils.myWhiteColor),
                                  color: utils.myBlackColor,
                                borderRadius: BorderRadius.circular(20)
                              ),
                        margin: EdgeInsets.all(25),
                       child: Row(
                        children: [
                           utils.myText("Required", utils.myWhiteColor, 20),
                        ],
                       ),
                     ),
                        ],
                       ),
                     ),
                     ListTile(
                      title: utils.myText("Thin", utils.myWhiteColor, 20),
                      trailing: Checkbox(
                     hoverColor: utils.myWhiteColor,
                      focusColor: utils.myWhiteColor,
                      value: false,
                                       onChanged: (value) => true,
                     ),
                     ),
                      ListTile(
                      title: utils.myText("Thick", utils.myWhiteColor, 20),
                      trailing: Checkbox(
                     hoverColor: utils.myWhiteColor,
                      focusColor: utils.myWhiteColor,
                      value: false,
                                       onChanged: (value) => true,
                     ),
                     ),
                      ListTile(
                      title: utils.myText("Udon", utils.myWhiteColor, 20),
                      trailing: Checkbox(
                     hoverColor: utils.myWhiteColor,
                      focusColor: utils.myWhiteColor,
                      value: false,
                                       onChanged: (value) => true,
                     ),
                     ),
                     InkWell(onTap: (){
                          Get.to(MyOrderPage());
                     },child: utils.myCustomButton("Add to Basket"),)
                    
              
                   
                      
                  ],
                ),
          
                
              ],
            ),
          ),
      ),
    );
  }
}