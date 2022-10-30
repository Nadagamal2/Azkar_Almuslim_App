 import 'package:flutter/material.dart';

import '../model/itemDoaa.dart';

class Item extends StatefulWidget {
     Item({Key? key, required this.number})  ;
     final ComponentDoaa number;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  padding: EdgeInsets.all(30.0),

                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child:
                        Text(
                          widget.number.doaaName,
                          textAlign:TextAlign.center ,


                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'Janna'
                          ),
                        ),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Colors.white38,
                          //Color(0xffF02900),
                          //  color:Color(0xffF3F3F3),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        widget.number.doaaText,
                        textAlign:TextAlign.center ,

                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontFamily: 'Janna'
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.0),
                    color: Colors.teal[300],

                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }




}