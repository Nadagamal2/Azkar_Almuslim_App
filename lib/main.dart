 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'layout/home_layout.dart';





void main()
{
  runApp(MyApp(
  ));
}


class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          // floatingActionButtonTheme: FloatingActionButtonThemeData(
          //   backgroundColor: Colors.deepOrange,
          // ),
          scaffoldBackgroundColor:  Colors.white,
          appBarTheme: AppBarTheme(
              backwardsCompatibility: false,
              titleSpacing: 20.0,

              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark,

              ),
              backgroundColor:  Colors.white,
              elevation: 0.0,
              titleTextStyle: TextStyle(

                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Janna'

              ),
              iconTheme: IconThemeData(
                color: Colors.black,
              )

          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            selectedItemColor:  Colors.teal[300],

            elevation: 20.0,
            backgroundColor:  Colors.white,
          ),

          textTheme: TextTheme(
              bodyText1: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )


          ),
          fontFamily: 'Janna'
      ),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: homeLayout(),)     ,
    );
  }
}