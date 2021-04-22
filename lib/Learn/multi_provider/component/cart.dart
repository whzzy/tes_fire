import 'package:flutter/widgets.dart';

class Cart with ChangeNotifier {
  int _qty = 0;
  int get qty => this._qty;

  set qty(int value) {
    _qty = value;
    notifyListeners();
  }
}
