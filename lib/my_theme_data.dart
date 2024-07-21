import 'package:flutter/material.dart';
import 'package:islame/app_colors.dart';

     class MyThemeData{
        static final  ThemeData lightMode = ThemeData(
          canvasColor: AppColors.primaryLightColor,
      primaryColor: AppColors.primaryLightColor,
      scaffoldBackgroundColor:Colors.transparent,
      appBarTheme:  const AppBarTheme(
                     backgroundColor: Colors.transparent,
                     elevation: 0,
          centerTitle: true),
         bottomNavigationBarTheme: BottomNavigationBarThemeData(
         selectedItemColor: AppColors.blackColor,

      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color:AppColors.blackColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )
      ),

        );

}
