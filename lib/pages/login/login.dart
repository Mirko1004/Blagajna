import 'package:blagajna/base/base_bloc_scaffold_widget.dart';
import 'package:blagajna/db/data_source/prodavac_data_source.dart';
import 'package:blagajna/db/entities/prodavac_pos.dart';
import 'package:blagajna/di/inject.dart';
import 'package:blagajna/localization/localization.dart';
import 'package:blagajna/pages/common/alert_dialogs/alert_dialog_login.dart';
import 'package:blagajna/pages/home_page/home_page.dart';
import 'package:blagajna/pages/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final LoginBloc _loginBloc = LoginBloc();

  Database database = Injection.injector.get<Database>();

  final TextEditingController _password = TextEditingController();


  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _password.dispose();
    super.dispose();
  }

  void initState() {
    if (isInDebugMode) {
      _password.text = "admin";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return BaseBlocScaffoldWidget(

      _loginBloc,

      AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(Localization.of(context).app_name,
                  style: TextStyle(
                    color: Colors.black
                  )),
      ),


      SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        SizedBox(height: 10.0),

                        Text( Localization.of(context).login_data ),

                        SizedBox(height: 10.0),

                        Container(
                          height: 35.0,
                          child: TextFormField(
                            controller: _password,
                            obscureText: true,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8.0),
                                  border: OutlineInputBorder(
                                  )
                              )
                          ),
                        ),

                        SizedBox(height: 20.0),

                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Future<ProdavacPos> prodavacByPassword = ProdavacDataSource.getProdavacByPassword(database, _password.text);

                                  if(_password.text.isEmpty)
                                    getAlertDialogLogin(context, Localization.of(context).username_password_check);

                                  else if(_password.text == "admin")

                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));

                                  else
                                    getAlertDialogLogin(context, Localization.of(context).username_password_error);
                                  },

                                child: Container(

                                  height: 50.0,
                                  width: 90.0,
                                  color: Color(0xff0a5c67),

                                  child: Center(
                                    child: Text(Localization.of(context).title_activity_login,
                                      style: TextStyle(
                                          color: Colors.white

                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: null,
                                child: Container(
                                  height: 50.0,
                                  width: 130.0,
                                  color: Color(0xffd62608),

                                  child: Center(
                                    child: Text(Localization.of(context).requear_license_title,
                                      style: TextStyle(
                                          color: Colors.white
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


                SizedBox(height: 15.0),

                Container(
                      height: 40.0,
                      color: Color(0xff17bac1),

                      child: Padding(
                        padding:  EdgeInsets.only(left:8.0),
                        child: Row(
                          children: <Widget>[
                             Text(Localization.of(context).device_id,
                             textAlign: TextAlign.start),

                          ],
                        ),
                      ),
                    ),


                Image.asset('assets/images/tele2_logo.jpg'),

                 Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text('Tele2',
                              style: TextStyle(
                                color: Color(0xff0a5c67),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold
                              ),
                              ),

                              SizedBox(height: 15.0),

                              Text('Ulica grada Vukovara 269d,'),
                              Text('10000 Zagreb'),

                              SizedBox(height: 15.0),

                              Text('Tehnička podrška: 021 490 599'),
                              Text('Podrška: gopos@bios-ict.hr'),

                              SizedBox(height: 40.0),

                            ],
                          ),
                 ),



                Container(
                  height: 100.0,
                  color:Color(0xff17bac1),

                  child: Padding(
                    padding: EdgeInsets.only(left:8.0, top:8.0),
                    child: Row(

                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(Localization.of(context).versionName),

                            SizedBox(height: 5.0),

                            Text(Localization.of(context).versionCode),

                            SizedBox(height: 5.0),

                            Text(Localization.of(context).dbVersion),

                            SizedBox(height: 5.0),

                            Text(Localization.of(context).privacy_policy),

                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
    ),
    );
  }

  bool get isInDebugMode {
    bool inDebugMode = false;
    assert(inDebugMode = true);
    return inDebugMode;
  }
}



