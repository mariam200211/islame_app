import 'package:flutter/material.dart';
import 'package:islame/app_colors.dart';
import 'package:islame/my_theme_data.dart';

class SebhaTap extends StatefulWidget {

  @override
  State<SebhaTap> createState() => SebhaTapState();
}

class SebhaTapState extends State<SebhaTap> {
  @override
  int counter = 0;
  double rotationAngle = 0.0;

  List<String> tasbehlist = ['سبحان الله', 'الحمد لله', 'أستغفر الله','الله أكبر '];

  int index=0;

  void addCounter(){
    setState(() {
      counter++;
      if (counter == 33) {
        counter = 0;
        index++;
      }
      if(index==4){
        counter = 0;
        index=0;
      }
      rotationAngle += (2 * 3.14159265359) / 33;
    });
  }



  Widget build(BuildContext context) {
    return Container(

    child: Center(

       child: Column(

    children: [
      SizedBox(height:100),
      Transform.rotate(
        angle:rotationAngle ,
        child: Container(
        width: 232,
        height: 234,
        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage('assets/image/seb7a.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      ),
      SizedBox(height: 20),

      Text(
        'عدد التسبيحات',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),

      ),


      SizedBox(height: 30),
      Container(
        padding:  EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:AppColors.another,
          borderRadius: BorderRadius.circular(10),
        ),
      child:Text(
        '$counter',
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      ),
      SizedBox(height: 30),
      GestureDetector(
        onTap:addCounter ,
        child: Container(
        padding:  EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:MyThemeData.lightMode.primaryColor,
          borderRadius: BorderRadius.circular(40),

        ),
      child:Text(
        tasbehlist[index],
        style: TextStyle(
            fontSize: 20,
          color: AppColors.whitColor,

        ),
      ),
      ),),
  ],
    ),
     ),
    );
  }
}