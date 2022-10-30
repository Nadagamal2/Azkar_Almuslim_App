import 'package:azkar/model/tasbeehItem.dart';
import 'package:flutter/material.dart';

class Tasbeeh extends StatefulWidget {
  const Tasbeeh({Key? key, required this.numberTasbeeh});
  final ComponentTasbeeh numberTasbeeh;
  @override
  State<Tasbeeh> createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Text(
                        widget.numberTasbeeh.tasbeehText,
                        textAlign:TextAlign.center ,
                        // 'سبحان الله',
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontFamily: 'Janna'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    widget.numberTasbeeh.tasbeehCount++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              color: Colors.white38,

                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            '${widget.numberTasbeeh.tasbeehCount}',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontFamily: 'Janna'),
                          ),
                          Spacer(
                            flex: 1,
                          ),

                          Container(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    widget.numberTasbeeh.tasbeehCount = 0;
                                  });
                                },
                                child: Icon(
                                  Icons.restart_alt,
                                  color: Colors.white,
                                  size: 40,
                                )),
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
