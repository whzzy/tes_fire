import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ApplicationColor with ChangeNotifier {
  bool _isOn = true;

  bool get isOn => _isOn;

  set isOn(value) {
    _isOn = value;
    notifyListeners();
  }

  Color get color => (isOn == true ? Colors.black : Colors.white);

  Color get inActiveColor => (isOn == true ? Colors.white : Colors.black);
}
