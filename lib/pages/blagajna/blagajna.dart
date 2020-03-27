import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:flutter/material.dart';

getCashRegister(BuildContext context){
   return Scaffold(
     appBar: getAppBar(context, 'Početne postavke'),

     body:  Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         children: <Widget>[
           Container(
             height: 50.0,
             color: Color(0xff0a5c67),

             child: Center(
               child: Text('Downloadaj certifikat',
                 style: TextStyle(
                     color: Colors.white
                 ),
               ),
             ),
           ),
         ],
       ),
     ),
   );
}