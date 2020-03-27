import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/alert_dialogs/alert_dialog.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:flutter/material.dart';

getNonFiscalBills(BuildContext context){
   return Scaffold(
     appBar: getAppBar(context, Localization.of(context).title_activity_nefiskalizirani_racuni),

     body: Container(
       child: Column(
         children: <Widget>[

           Expanded(
             child:SingleChildScrollView()
           ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: SafeArea(
               child: InkWell(
                 onTap: () => getAlertDialog(context, Localization.of(context).fiskaliziraj_racune_dialog_title, Localization.of(context).fiskaliziraj_racune_dialog_message),
                 child: Container(
                   height: 50.0,
                   decoration: new BoxDecoration(
                     color: Color(0xff0a5c67),
                   ),

                   child: Center(
                     child: Text(Localization.of(context).fiskaliziraj_racune,
                       style: TextStyle(
                           color: Colors.white,
                           decoration: TextDecoration.none,
                           fontSize: 15.0),
                     ),
                   ),
                 ),
               ),
             ),
           ),
         ],
       ),

       color: Colors.white,
     ),
   );
}