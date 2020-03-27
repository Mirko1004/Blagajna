import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/app_bars/app_bar.dart';
import 'package:blagajna/pages/common/buttons/pregled_ispis.dart';
import 'package:blagajna/pages/common/period_od_period_do.dart';
import 'package:blagajna/pages/izvjestaji/pregled_prometa_po_artiklima/pregled_po_artiklima.dart';
import 'package:flutter/material.dart';


class ReviewTradeArticles extends StatefulWidget {
  @override
  _ReviewTradeArticlesState createState() => _ReviewTradeArticlesState();
}

class _ReviewTradeArticlesState extends State<ReviewTradeArticles> {
  String dropdownValue = 'Test poslovni prostor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: getAppBar(context, Localization.of(context).pregled_prometa_po_artiklima),

      body: Container(
        child: Column(

          children: <Widget>[

            Expanded(
              child: SingleChildScrollView(
                child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      PeriodOdPeriodDo(),

                      SizedBox(height: 10.0),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Text(Localization.of(context).title_activity_poslovni_prostor),

                          DropdownButton<String>(
                            isExpanded: true,
                            value: dropdownValue,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 29,
                            style: TextStyle(
                                color: Colors.black
                            ),
                            underline: Container(
                              height: 1,
                              color: Colors.black,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>[
                              'Test poslovni prostor'
                            ]
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                                .toList(),
                          ),

                        ],
                        ),
                      )
                    ],
                  ),
              ),
            ),

            SafeArea(
              child: getReviewPrint(context, () => getArticlesReview(context)),
            )
          ],
        ),

        color: Colors.white,
      ),
    );
  }
}




