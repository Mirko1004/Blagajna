import 'package:blagajna/bloc/base_bloc.dart';
import 'package:rxdart/rxdart.dart';

class PrinterBloc extends BaseBloc{

  final BehaviorSubject printer = BehaviorSubject();

  @override
  void dispose() {
    printer.close();
    super.dispose();
  }
}