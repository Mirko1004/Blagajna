import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/arhiva_racuna/pregled_racuna/pregled.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/buttons/pregled_ispis.dart';
import 'package:blagajna/pages/common/period_od_period_do.dart';
import 'package:flutter/material.dart';

class BillReview extends StatefulWidget {
  @override
  _BillReviewState createState() => _BillReviewState();
}

class _BillReviewState extends State<BillReview> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: getAppBar(context, Localization.of(context).title_activity_pregled_racuna),

        body:  Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Expanded(
                  child:SingleChildScrollView(
                    child: Column(
              children: <Widget>[

                PeriodOdPeriodDo(),

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

                    Text(Localization.of(context).racuni_storno),
                  ],
                ),
              ],
                    )
                  )
              ),

              SafeArea(
                  child: getReviewPrint(context, () => getReview(context))
              ),

            ],
          ),

          color: Colors.white,
        ),
      );
  }
}




