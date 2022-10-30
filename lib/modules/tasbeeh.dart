 import 'package:flutter/material.dart';

import '../model/tasbeehItem.dart';
import '../shared/comonentTasbeeh.dart';

class TasbeehScreen extends StatelessWidget {
 final List<ComponentTasbeeh>tasbeeh=[
   ComponentTasbeeh(tasbeehText: 'سبحان الله', tasbeehCount: 0),
   ComponentTasbeeh(tasbeehText: 'الحمد لله', tasbeehCount: 0),
   ComponentTasbeeh(tasbeehText: 'لا إله إلا الله', tasbeehCount: 0),
   ComponentTasbeeh(tasbeehText: 'الله أكبر', tasbeehCount: 0),
   ComponentTasbeeh(tasbeehText: 'لا حول ولا قوة إلا بالله العلي العظيم', tasbeehCount: 0),
   ComponentTasbeeh(tasbeehText: ' أستغفر الله العظيم', tasbeehCount: 0),
 ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body:  ListView.builder(
         physics: BouncingScrollPhysics(),
         itemBuilder: (context,index){
           return Tasbeeh(numberTasbeeh:tasbeeh[index]);


         },
         itemCount: tasbeeh.length,
       ),
     );
   }
 }
