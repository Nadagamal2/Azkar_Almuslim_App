
import 'package:azkar/layout/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../icons.dart';
import '../../modules/doaa.dart';
import '../../modules/evening_azkar.dart';
import '../../modules/morning_azkar.dart';
import '../../modules/sleep_azkar.dart';
import '../../modules/tasbeeh.dart';


class AppCubit extends Cubit<AppStates>{
  AppCubit():super(AppInitialState());
  static AppCubit get(context)=>BlocProvider.of(context);
  int currentIndex=0;
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sunny,
      ),
      label: 'أذكارالصباح',


    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.nightlight_outlined,
      ),
      label: 'أذكارالمساء',


    ),
    BottomNavigationBarItem(
      icon: Icon(

          MyFlutterApp.bed,
      ),
      label: 'أذكارالنوم',


    ),
    BottomNavigationBarItem(
      icon: Icon(

          MyFlutterApp.hands,
      ),
      label: 'أدعية',


    ),
    BottomNavigationBarItem(
      icon: Icon(

        MyFlutterApp.spinner,
      ),
      label: 'التسبيح',


    ),


  ];
  List<Widget> screens=[
    MorningScreen(),
    EveningScreen(),

    SleepAzkar(),
    DoaaAzkar(),
    TasbeehScreen(),

  ];
  void changeBottomNavBar(int index){
    currentIndex=index;
    emit(AppBottomNavState());
  }


}