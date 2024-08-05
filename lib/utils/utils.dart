import 'package:flutter/material.dart';

class utils{

   static Color myBlackColor= Colors.black;
   static Color myWhiteColor= Colors.white;
   static Color myloginColor= Color(0xff0B1225);
   static Color myGreyColor= Colors.grey;
   static Color myButtonColor1=  Color(0xff04050F);     
   static Color myButtonColor2=  Color(0xff0F55E8);
   static Color myPurpleColor= Color(0xffEC2578);
   static Color myBackgroundColor= Color(0xff0B1225);

   

   static myText(String txt,Color clr,double size){
    return Text(txt,style: TextStyle(fontSize: size,color: clr,fontWeight: FontWeight.bold),);
   }

   static myTextField(String txt, Icon icon,bool passwordTextHide ,{Icon ?eyeIcon}){
     return TextFormField(
      
      cursorColor: utils.myGreyColor,
      style: TextStyle(fontSize: 19,color: utils.myWhiteColor,),
      obscureText: passwordTextHide,
        decoration:  InputDecoration(
          
          hintText: txt,
          suffixIcon:eyeIcon,
          hintStyle: TextStyle(fontSize: 17,color: utils.myGreyColor,),
          prefixIcon: Container(
            color: utils.myWhiteColor,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(12),
            child:icon
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 2,
              color: utils.myWhiteColor
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 2,
              color: utils.myWhiteColor
            )
          )
        ),
        onSaved: (String? value) {
          // This optional block of code can be used to run
          // code when the user saves the form.
        },
        validator: (String? value) {
          return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
        },
      );
   }

   static myCustomButton(String txt,){
     return Container(
      width: double.infinity,
      height: 50,

      margin: EdgeInsets.only(top: 30,left: 20,right: 20),
      child: Center(
        child: myText(txt,utils.myWhiteColor, 20),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
           utils.myButtonColor1,
           utils.myButtonColor2
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        
      ),
     );
   }
  

  static myCustomItemWidget(context,Image image, String txt1, String txt2, String txt3){
     return Container(
              margin: EdgeInsets.only(top: 12,right: 20,left: 20),
               child: Stack(
                children: [
                  Container(
                        child: image),
                      
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.sizeOf(context).height*0.1),
                      child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 12),
                                  child: utils.myText(txt1, utils.myWhiteColor, 25),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 12),
                                  child: utils.myText(txt2, utils.myWhiteColor, 17),
                                ),
                              ],
                            ),
                             Row(
                               children: [
                                 Container(
                                  margin: EdgeInsets.only(left: 12),
                                  child: utils.myText(txt3, utils.myWhiteColor, 17),
                            ),
                               ],
                             ),
                             SizedBox(height: 12,)
                             
                          ],
                        ),
                    ),
             
                ],
               ),
             );
  }

}

  class Constants {
  // static List categories = [
  //   [
  //     'Assets/burger.png',
  //     "Burgers",
  //   ],
  //   [
  //     'Assets/cake.png',
  //     "Dessert",
  //   ],
  //   [
  //     'Assets/shawarma.png',
  //     "Mexican",
  //   ],
  //   [
  //     'Assets/burger.png',
  //     "Burgers",
  //   ],
  //   [
  //     'Assets/cake.png',
  //     "Dessert",
  //   ],
  //   [
  //     'Assets/shawarma.png',
  //     "Mexican",
  //   ],
   
  // ];

  static List imageList = [
    Image.network("https://s3-alpha-sig.figma.com/img/d002/7dd4/032ebdb757277129154cae99525a2888?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qSk8JCbiWwYZVk123GLBj63tOgVxxhId0Nsb8LMnK2VHCS3OpdnlH9DRBYVHsBxIFN2oLeA266jo~fKg8jx4G2OchyC527gyUNUpQ1falQcKCf8LqTA~-XOFCTSVt0xIU~m57HPuktze-qIGxEWRUeLgFWr6tAMg9meHzgqTDSnwigMvYflVjsc94byVy-HVo0A1pDOgVdVddUM2-ApXxF6olkTGx91BOV4hzRF3LTbG-fqAx~ijA1SHLC60i4taU4GB-hXleUp-c72tKzhPxn6NS30MpB1umWJdcvVJ9us3mEOAYkSt3mco37faDcY8mZynMNfovKHtnD5AVHDD8A__"  ,),
    Image.network("https://s3-alpha-sig.figma.com/img/d002/7dd4/032ebdb757277129154cae99525a2888?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qSk8JCbiWwYZVk123GLBj63tOgVxxhId0Nsb8LMnK2VHCS3OpdnlH9DRBYVHsBxIFN2oLeA266jo~fKg8jx4G2OchyC527gyUNUpQ1falQcKCf8LqTA~-XOFCTSVt0xIU~m57HPuktze-qIGxEWRUeLgFWr6tAMg9meHzgqTDSnwigMvYflVjsc94byVy-HVo0A1pDOgVdVddUM2-ApXxF6olkTGx91BOV4hzRF3LTbG-fqAx~ijA1SHLC60i4taU4GB-hXleUp-c72tKzhPxn6NS30MpB1umWJdcvVJ9us3mEOAYkSt3mco37faDcY8mZynMNfovKHtnD5AVHDD8A__"  ,),
    Image.network("https://s3-alpha-sig.figma.com/img/d002/7dd4/032ebdb757277129154cae99525a2888?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qSk8JCbiWwYZVk123GLBj63tOgVxxhId0Nsb8LMnK2VHCS3OpdnlH9DRBYVHsBxIFN2oLeA266jo~fKg8jx4G2OchyC527gyUNUpQ1falQcKCf8LqTA~-XOFCTSVt0xIU~m57HPuktze-qIGxEWRUeLgFWr6tAMg9meHzgqTDSnwigMvYflVjsc94byVy-HVo0A1pDOgVdVddUM2-ApXxF6olkTGx91BOV4hzRF3LTbG-fqAx~ijA1SHLC60i4taU4GB-hXleUp-c72tKzhPxn6NS30MpB1umWJdcvVJ9us3mEOAYkSt3mco37faDcY8mZynMNfovKHtnD5AVHDD8A__"  ,),
    Image.network("https://s3-alpha-sig.figma.com/img/d002/7dd4/032ebdb757277129154cae99525a2888?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qSk8JCbiWwYZVk123GLBj63tOgVxxhId0Nsb8LMnK2VHCS3OpdnlH9DRBYVHsBxIFN2oLeA266jo~fKg8jx4G2OchyC527gyUNUpQ1falQcKCf8LqTA~-XOFCTSVt0xIU~m57HPuktze-qIGxEWRUeLgFWr6tAMg9meHzgqTDSnwigMvYflVjsc94byVy-HVo0A1pDOgVdVddUM2-ApXxF6olkTGx91BOV4hzRF3LTbG-fqAx~ijA1SHLC60i4taU4GB-hXleUp-c72tKzhPxn6NS30MpB1umWJdcvVJ9us3mEOAYkSt3mco37faDcY8mZynMNfovKHtnD5AVHDD8A__"  ,),
    Image.network("https://s3-alpha-sig.figma.com/img/d002/7dd4/032ebdb757277129154cae99525a2888?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qSk8JCbiWwYZVk123GLBj63tOgVxxhId0Nsb8LMnK2VHCS3OpdnlH9DRBYVHsBxIFN2oLeA266jo~fKg8jx4G2OchyC527gyUNUpQ1falQcKCf8LqTA~-XOFCTSVt0xIU~m57HPuktze-qIGxEWRUeLgFWr6tAMg9meHzgqTDSnwigMvYflVjsc94byVy-HVo0A1pDOgVdVddUM2-ApXxF6olkTGx91BOV4hzRF3LTbG-fqAx~ijA1SHLC60i4taU4GB-hXleUp-c72tKzhPxn6NS30MpB1umWJdcvVJ9us3mEOAYkSt3mco37faDcY8mZynMNfovKHtnD5AVHDD8A__"  ,),
    
    ];
  static List txtList1 = [
    "Kinka Izakaya","Japanese",
    "Kinka Izakaya","Japanese",
    "Kinka Izakaya","Japanese",
    "Kinka Izakaya","Japanese",
    "Kinka Izakaya","Japanese",
    ];

    static List txtList2 = [
    "Japanese"
    "Japanese"
    "Japanese"
    "Japanese"
    "Japanese"
    ];

    static List txtList3 = [
   "\$3.99 delivery fee | 30 min"
   "\$3.99 delivery fee | 30 min"
   "\$3.99 delivery fee | 30 min"
   "\$3.99 delivery fee | 30 min"
   "\$3.99 delivery fee | 30 min"
    ];
}


