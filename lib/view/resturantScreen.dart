import 'package:flutter/material.dart';
import 'package:foodie_app/utils/utils.dart';
import 'package:foodie_app/view/MenuScreen.dart';
import 'package:get/get.dart';

class MyresturantScreenpage extends StatelessWidget {
  const MyresturantScreenpage({super.key});

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

              Image.network("https://s3-alpha-sig.figma.com/img/bad2/96e2/c8d94a24184badd7895006e070ef542c?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hqY9mxFe7f6IXQcWZ4m2mFTzHdwCazOlen2OXNarwg68lOtmpoFZB1VszEh-i7pigwj7jdTXKgNai7yRpW7YBuuXcOg~sTsg1yBLSjQtc4YnqxAhhDahpqQAN-8j5NXYrLyYHbw63Zf0n82VkIxMKMDKwXfv2Bx3Io84TcFsp6tbfCQW-A19Qj19ZEd0bagt9IkAzKxLcy96PBkiZgds9TveNsvemjSXJ1LtWbsdlgHn6k7QCFEWCKyRsoCJljcSV0qXj25ORsFudgWT6nsEsGgMb7snXjJVaNnglfbgmf9eOxbdN7l48YbzSyTHB5YUOgX8FfCywARUkPGB5T0lzg__"),
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
                                borderRadius: BorderRadius.circular(20)
                              ),
                              margin: EdgeInsets.all(20),
                             
                              padding: EdgeInsets.all(12),
                              child: Center(child: Icon(Icons.arrow_back_ios,color: utils.myWhiteColor,size: 30,)),
                            ),
                          ),
                          SizedBox(width: 100,),
                          Row(
                            children: [
                               Container(
                           
                            decoration: BoxDecoration(
                                color: utils.myBlackColor,
                              borderRadius: BorderRadius.circular(20)
                            ),
                           margin: EdgeInsets.only(top: 20,left: 0,right: 4,bottom: 20),
                           
                            padding: EdgeInsets.all(12),
                            child: Center(child: Icon(Icons.favorite,color: utils.myWhiteColor,size: 30,)),
                          ),
                    
                           Container(
                           
                            decoration: BoxDecoration(
                                color: utils.myBlackColor,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            margin: EdgeInsets.only(top: 20,left: 0,right: 4,bottom: 20),
                           
                            padding: EdgeInsets.all(12),
                            child: Center(child: Icon(Icons.more_horiz,color: utils.myWhiteColor,size: 30,)),
                          ),
                            ],
                          )
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 20,right: 20,top: 185),
                      height: 200,
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
                     child: utils.myText("Kinka Izakaya",utils.myGreyColor,22),
                   ),
                    Container(
                        margin: EdgeInsets.only(top: 2),
                     child: utils.myText("2972 westheimer Rd. Santa Ana >",utils.myWhiteColor,14),
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
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                   Container(
                                margin: EdgeInsets.only(top: 2,left: 6,),
                                                     child: utils.myText("Delivery Fee \n \$3.99",utils.myGreyColor,15),
                              ), 
                                Container(
                                margin: EdgeInsets.only(top: 2,left: 6,),
                                                     child: utils.myText("Delivery Fee \n \$3.99",utils.myGreyColor,15),
                              ), 
                                Container(
                                margin: EdgeInsets.only(top: 2,left: 6,),
                                                     child: utils.myText("Delivery Fee \n \$3.99",utils.myGreyColor,15),
                              ), 
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Image.asset("assets/images/Frame 28.png"),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                          child:Icon(Icons.search,size: 20,color: utils.myGreyColor,),
                        ),
                        Container(
                                margin: EdgeInsets.only(top: 2,left: 10,),
                                                     child: utils.myText("Featured Item",utils.myWhiteColor,16),
                              ), 
                              Container(
                                margin: EdgeInsets.only(top: 2,left: 10,),
                                                     child: utils.myText("Appetizers",utils.myGreyColor,16),
                              ), 
                              Container(
                                margin: EdgeInsets.only(top: 2,left: 10,),
                                                     child: utils.myText("  Sushi",utils.myGreyColor,16),
                              ), 
                    
                    
                      ],),
                    ),
                     Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Container(
                            margin: EdgeInsets.only(left: 25),
                            child: utils.myText("Featured Item", utils.myWhiteColor, 25),
                              ),
                ],
              ),
            ),
             ListView.builder(
                       shrinkWrap: true,
                       physics: const NeverScrollableScrollPhysics(), // Make sure it doesn't scroll independently
                       itemCount: 5,
                       itemBuilder: (context, index) {
                         return   InkWell(
                          onTap: (){
                            Get.to(MyMenuScreen());
                          },
                           child: Container(
                            height:250,
                             child: Card(
                              
                              color: utils.myloginColor,
                              child: utils.myCustomItemWidget(context, Image.network("https://s3-alpha-sig.figma.com/img/3506/0211/0447761fa98ff6a68e27e28dfc5ececf?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mp111eTDUgq9E4JAwG9F2qJI82jrEuHVkDrHxJhltIkgA9Mtr1knU1hmeZgfxKhAZ1HN~oZl99oUzqzdPvGUxlfTJKNVTRXfbQ8NU56W~HIMBOyFIRTXpXke5rxo8yho4GDYDPHu~0KzDou-S5uWvmpnhQxBMoewFQP9TmsyRXZlBhdElwpXDHq6Koe1BEKVt5mYBnE2obFRIHG6Zn4XcvsI38a06jYRmWmMwJnWBqFur4eKhwtEhOCMQg-XpVsHwNczWoSE0epqAOPdovoxMRQfTIps356JF6EWYH7YxKjgrY0VBqcYTq-iSnMlbZ1q61Quurb5rlosr8rXnIUdrA__"  ),
                              "Udon Miso","Japanese" ,"\$16.00" )
                             ),
                           ),
                         );
                         
               
                       },
                     ),
         
                    
                ],
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}