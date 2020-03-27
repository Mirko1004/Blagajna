import 'package:blagajna/globals.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PeriodOdPeriodDo extends StatefulWidget {
  @override
  _PeriodOdPeriodDoState createState() => _PeriodOdPeriodDoState();
}

class _PeriodOdPeriodDoState extends State<PeriodOdPeriodDo> {

  DateTime _dateTime;
  DateTime _dateTimeDo;
  TimeOfDay _dayTime;
  TimeOfDay _dayTimeEnd;
  var myFormat = DateFormat('MMM d, y') ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ()  => showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2010),
            lastDate: DateTime(2050),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text(Localization.of(context).period_od),

                    SizedBox(height: 10.0),

                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: ()  => showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2010),
                              lastDate: DateTime(2050)
                          ).then((date){
                            setState(() {
                              _dateTime = date;
                            });
                          }),

                          child:  Center(
                              child: Text(_dateTime == null ? Globals.dateDnevniPromet(DateTime.now()) : '${myFormat.format(_dateTime)}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                ),
                              ),
                            ),
                        ),

                        SizedBox(width: 20.0),

                        InkWell(
                          onTap: ()  => showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          ).then((time){
                            setState(() {
                              _dayTime = time;
                            });
                          }),

                          child: Center(
                            child: Text(_dayTime == null ? '00:00:00' : _dayTime.format(context),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0
                              ),
                            ),
                          ),

                        )
                      ],
                    ),
                  ],
                ),

                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Color(0xff0a5c67),

                  child: Icon(Icons.search,
                    color: Colors.white,),
                )
              ],
            ),

            SizedBox(height: 20.0),

            Text(Localization.of(context).period_do),

            SizedBox(height: 10.0),

            Row(
              children: <Widget>[
                InkWell(
                  onTap: ()  => showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2010),
                      lastDate: DateTime(2050)
                  ).then((date){
                    setState(() {
                      _dateTimeDo = date;
                    });
                  }),

                  child:  Center(
                    child: Text(_dateTimeDo == null ? Globals.dateDnevniPromet(DateTime.now()) : '${myFormat.format(_dateTimeDo)}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                ),

                SizedBox(width: 20.0),

                InkWell(
                  onTap: ()  => showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ).then((time){
                    setState(() {
                      _dayTimeEnd = time;
                    });
                  }),

                  child: Center(
                    child: Text(_dayTimeEnd == null ? '23:59:59' : _dayTimeEnd.format(context),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0
                      ),
                    ),
                  ),

                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

