import 'package:blagajna/db/entities/vrsta_obveznika_pos.dart';
import 'package:blagajna/globals.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/buttons/pregled_ispis.dart';
import 'package:blagajna/pages/izvjestaji/ispis_dnevnog_prometa/pregled_dnevnog_prometa.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DnevniPromet extends StatefulWidget {
  @override
  _DnevniPrometState createState() => _DnevniPrometState();
}

class _DnevniPrometState extends State<DnevniPromet> {

  DateTime _dateTime;
  List<VrstaObveznikaPos> vrstaObveznikaList ;
  VrstaObveznikaPos _vrstaObveznikaPos;

  bool _check = false;

  var myFormat = DateFormat('MMM d, y');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: getAppBar(context, Localization.of(context).ispis_dnevnog_prometa),

      body: Container(

        child: Column(

          children: <Widget>[

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(Localization.of(context).title_activity_poslovni_prostor),

                       DropdownButtonFormField<VrstaObveznikaPos>(
                         value: _vrstaObveznikaPos,
                        onChanged: (VrstaObveznikaPos value){
                          setState(() {
                            _vrstaObveznikaPos = value;
                          });
                        },
                        items: vrstaObveznikaList?.map((value) => DropdownMenuItem<VrstaObveznikaPos>(
                          child: Text(value.vrsta_obveznika_naziv),
                          value: value,
                        )
                        )?.toList() ?? [],

                      ),

                      Row(
                        children: <Widget>[

                          Checkbox(
                            onChanged: (bool tap){

                              setState(() {
                                _check = tap;
                              });
                            },
                            value: _check,
                          ),

                          Text(Localization.of(context).promet_po_vrsti_placanja)
                        ],
                      ),

                      SizedBox(height: 10.0),

                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: ()  => showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2010),
                                lastDate: DateTime(2222)
                            ).then((date){
                              setState(() {
                                _dateTime = date;
                              });

                            }),
                            child: Container(
                              color: Color(0xff0a5c67),
                              height: 50.0,
                              width: 100.0,
                              child: Center(
                                child: Text(_dateTime == null ? Globals.dateDnevniPromet(DateTime.now()) : '${myFormat.format(_dateTime)}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0
                                ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SafeArea(
              child: getReviewPrint(context, () => getReviewDailyTrade(context)),
            )

          ],
        ),

        color: Colors.white,
      ),
    );
  }
}

