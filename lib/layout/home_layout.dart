
import 'package:azkar/layout/cubit/cubit.dart';
import 'package:azkar/layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class homeLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context ,state){},
        builder: (context,state){
          var cubit=AppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Center(
                child: Column(
                  children: [
                    Text(
                        'أذكار المسلم',
                      style: TextStyle(
                        fontSize: 24,

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 145.0),
                      child: Divider(
                        height: 5.0,
                        color: Colors.teal[300],
                        thickness: 2,

                      ),
                    ),
                  ],
                ),
              ),

            ),
            body: cubit.screens[cubit.currentIndex],

            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index){
                cubit.changeBottomNavBar(index);

              },
              items: cubit.bottomItems,
            ),


          );
        },

      ),
    );
  }
}
