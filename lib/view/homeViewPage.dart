import 'package:flutter/material.dart';
import 'package:foodie_app/utils/utils.dart';
import 'package:foodie_app/view/resturantScreen.dart';
import 'package:get/get.dart';

class MyHomeViewPage extends StatelessWidget {
  const MyHomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child:AppBar(
        backgroundColor:utils.myBackgroundColor  ,
        // centerTitle: true,
         iconTheme: IconThemeData(color: utils.myWhiteColor),
         title: Column(
          children: [
             Row(
               children: [
                 Container(
                            margin: EdgeInsets.only(top: 2),
                         child: utils.myText("Delivery",utils.myGreyColor,16),
                       ),
               ],
             ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 2),
                         child: utils.myText("Maplewood Suites",utils.myWhiteColor,16),
                   ),
                      ],
                    ),
          ],
         ),
         actions: [
          Container(
                    margin: EdgeInsets.only(top: 20),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(  child: Image.asset("assets/images/Frame 8.png",), ),
                        SizedBox(width: 12,),
                        Container(  child: Image.asset("assets/images/Frame 7.png"), )
                      ],
                     ),
                   ),

         ],
      ), 
      ),
      drawer: Drawer(
        backgroundColor:utils.myBackgroundColor ,
      ),
      body: SingleChildScrollView(
        child: Container(
           decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/Frame 18.png",),fit: BoxFit.fill,)
          ),
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20,right: 12,left: 12),
              child: utils.myTextField("Your order?", Icon(Icons.search), false,eyeIcon: Icon(Icons.qr_code_scanner,size: 30,)),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Container(
                            margin: EdgeInsets.only(top: 2),
                         child: utils.myText("Categories",utils.myWhiteColor,25),
                   ),
                    Container(
                            margin: EdgeInsets.only(top: 2),
                         child: utils.myText("See all",utils.myGreyColor,17),
                   ), 
                ],
              ),
            ),

            //imageList....
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 12,right: 10),
                          child: Container(
                            height: 70,
                            width: 64,
                            color: utils.myloginColor,
                            child: Image.asset("assets/images/burger 1.png"),
                          ),
                        ),
                        SizedBox(width: 12,),
                        Container(
                          margin: EdgeInsets.only(left: 12,right: 10),
                          child: Card(
                            color: utils.myloginColor,
                            child: Image.asset("assets/images/cake 1.png"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 10),
                          child: Card(
                            color: utils.myloginColor,
                            child: Image.network("https://s3-alpha-sig.figma.com/img/6e5a/a147/506fb4c48bf5827aaed89e3f4dc638f1?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NrsW8foJpgZEts5db93KiN0uPcio41R-PDy7XRKKxZzp6L7Jr5mf7PwDrtx-yzH6cPXiGGexCG7M0dKatVlGyVBB~AKxb15dVP-hqGicrmY5oJ5mJtsJhk2xbKcb52XIAGLvZhhb3PFv-aG6QfREj2pzWMYsc1xX6A74WyEtf7d9aLHiozrvuCId2SXzZAKpuR7m7HXmmlEXbWSNK1qzuVEMch~1TwQTeM08EvU8-tIYP8z5TdzFTvq8jsdtC576pTaKl9kLTSOxN~omFtxIBrfvl1MOYEn80luShPSta3Qg0Ih1kWhEp34I65X-6v1V0neruVG7l5G20BfaizJ2sQ__",width: 60,height: 75,)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 12),
                          child: Card(
                            color: utils.myloginColor,
                            child: Image.asset("assets/images/3D Food Icon by @OdafeUI.png"),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
            
               //imageName
              // Row(
              //   children: [    
              //     Container(
              //       margin: EdgeInsets.only(left: 10,right: 10),
              //       child: Card(
              //         color: utils.myloginColor,
              //         child: utils.myTextField("Burger", Icon(Icons.search), false,eyeIcon: Icon(Icons.qr_code_scanner,size: 30,)),
              //     ),
              //     ),
              //     SizedBox(width: 12,),
              //     Container(
              //       margin: EdgeInsets.only(left: 10,right: 10),
              //       child: Card(
              //         color: utils.myloginColor,
              //         child: utils.myTextField("Burger", Icon(Icons.search), false,eyeIcon: Icon(Icons.qr_code_scanner,size: 30,)),
              //     ),
              //     ),
              //     Container(
              //       margin: EdgeInsets.only(left: 10,right: 10),
              //       child: Card(
              //         color: utils.myloginColor,
              //         child: utils.myTextField("Burger", Icon(Icons.search), false,eyeIcon: Icon(Icons.qr_code_scanner,size: 30,)),
              //     ),
              //     ),
              //     Container(
              //       margin: EdgeInsets.only(left: 10,right: 12),
              //       child: Card(
              //         color: utils.myloginColor,
              //         child: utils.myTextField("Burger", Icon(Icons.search), false,eyeIcon: Icon(Icons.qr_code_scanner,size: 30,)),
              
              //       ),
              //     ),
                  
              //   ],
              // )
                ],
              ),
            ),

            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(left: 12,right: 12,top: 12),
              child: Card(
                color: utils.myloginColor,
                child: Stack(
                  children: [

                     Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Container(
                              child: Image.network("https://s3-alpha-sig.figma.com/img/08fb/2bd6/cdbfc7b0b597608fa2051c7352ae71fa?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=XpxuxYi-yFSyMkBjKwOIfE1Mr5AGNdie2penlsFT-VFMt0YzyoBdQ6w3Wjk1RZi-7jYqvl5JkXZq5Iyy-UkuQDdZVYfWqHf1f9YR9cPGxRmn-4C5aiAyudzSPne1JnLkEQyoNUU8GH3NrmfGdSAxPxl2zRbXkG9uEKbzwqHq2S5WElJubxwQiQzfc-JFMwjbY9CnKFHuY2XRaZV97aCyB9E~MRxkZX2vvp-ZFjdb1Tz0Culw2epQD5z6QyikVKl21o95U3PFqXZ5hdzEK4D98DPBzW2rIgKKG55ucHCwBvfxuCfTZP0khJ4qFWvL6Ie7P-mTocIn1z4mashK0owGrA__",cacheHeight: 2,)
                                        )

                       ],
                     ) ,
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 12),
                              child: utils.myText("30% OFF", utils.myWhiteColor, 25),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 12),
                              child: utils.myText("Discover discount in your", utils.myWhiteColor, 17),
                            ),
                          ],
                        ),
                         Row(
                           children: [
                             Container(
                              margin: EdgeInsets.only(left: 12),
                              child: utils.myText("favourite local resturant", utils.myWhiteColor, 17),
                        ),
                           ],
                         ),
                         utils.myCustomButton("Order Now"),  
                      ],
                    ),
                             ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                   Container(
                    margin: EdgeInsets.all(8),
                     child: CircleAvatar(
                      radius: 5,
                      backgroundColor: utils.myWhiteColor,
                     ),
                   ),
                   Container(
                    margin: EdgeInsets.all(8),
                     child: CircleAvatar(
                      radius: 5,
                      backgroundColor: utils.myGreyColor,
                     ),
                   ),
                   Container(
                    margin: EdgeInsets.all(8),
                     child: CircleAvatar(
                      radius: 5,
                      backgroundColor: utils.myGreyColor,
                     ),
                   ),
                   Container(
                    margin: EdgeInsets.all(8),
                     child: CircleAvatar(
                      radius: 5,
                      backgroundColor: utils.myGreyColor,
                     ),
                   ),
                   Container(
                    margin: EdgeInsets.all(8),
                     child: CircleAvatar(
                      radius: 5,
                      backgroundColor: utils.myGreyColor,
                     ),
                   ),
                    

            ],),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Container(
                            margin: EdgeInsets.only(left: 20),
                            child: utils.myText("Fastest near you", utils.myWhiteColor, 20),
                              ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(), // Make sure it doesn't scroll independently
                      itemCount: Constants.imageList.length,
                      itemBuilder: (context, index) {
                        return   InkWell(
                          onTap: (){
                             Get.to(MyresturantScreenpage());
                          },
                          child: utils.myCustomItemWidget(context, Image.network("https://s3-alpha-sig.figma.com/img/d002/7dd4/032ebdb757277129154cae99525a2888?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qSk8JCbiWwYZVk123GLBj63tOgVxxhId0Nsb8LMnK2VHCS3OpdnlH9DRBYVHsBxIFN2oLeA266jo~fKg8jx4G2OchyC527gyUNUpQ1falQcKCf8LqTA~-XOFCTSVt0xIU~m57HPuktze-qIGxEWRUeLgFWr6tAMg9meHzgqTDSnwigMvYflVjsc94byVy-HVo0A1pDOgVdVddUM2-ApXxF6olkTGx91BOV4hzRF3LTbG-fqAx~ijA1SHLC60i4taU4GB-hXleUp-c72tKzhPxn6NS30MpB1umWJdcvVJ9us3mEOAYkSt3mco37faDcY8mZynMNfovKHtnD5AVHDD8A__"  ,),
                         "Kinka Izakaya","Japanese" ,"\$3.99 delivery fee | 30 min" ),
                        );
              
                      },
                    ),
            ),
                   ],
          ),
        ),
      ),
    );
  }
}