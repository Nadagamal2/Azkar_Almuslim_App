import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../model/ItemAzkar.dart';

class Item2 extends StatefulWidget {
  const Item2({Key? key, required this.numberMorning})  ;
  final ComponentAzkar numberMorning;



  @override
  State<Item2> createState() => _Item2State();


}

class _Item2State extends State<Item2> {

  Widget build(BuildContext context) {
     return  Stack(

      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(

              children: [
                Container(
                  padding: EdgeInsets.all(30.0),

                  child:Column(


                    children: [
                      Text(
                        widget.numberMorning.Textquran,

                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontFamily:'Janna'
                        ),
                        textAlign:TextAlign.center ,
                      ),
                      Text(
                        widget.numberMorning.Textcount,
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                            fontFamily:'Janna'
                        ),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child:GestureDetector(
                                onTap: (){
                                  setState(() {
                                    '${widget.numberMorning.counterName++}';
                                    if( widget.numberMorning.counterName==widget.numberMorning.countertime){
                                      Fluttertoast.showToast(
                                          msg: "لقد انهيت العد هنا",  // message
                                          toastLength: Toast.LENGTH_SHORT, // length
                                          gravity: ToastGravity.BOTTOM,
                                          // location
                                          timeInSecForIosWeb: 1               // duration
                                      );
                                      widget.numberMorning.counterName=0;
                                    }
                                  });
                                },
                                child: Icon(Icons.add,color: Colors.white,size: 40,)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              color: Colors.white38,
                            ),
                          ),
                          Spacer(flex: 1,),
                          Text('${ widget.numberMorning.counterName}',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontFamily:'Janna'
                            ),),
                          Spacer(flex: 1,),
                          Container(
                            child:GestureDetector(
                                onTap: (){
                                  setState(() {
                                    widget.numberMorning.counterName=0;
                                  });},
                                child: Icon(Icons.restart_alt,color: Colors.white,size: 40,)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      )

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
