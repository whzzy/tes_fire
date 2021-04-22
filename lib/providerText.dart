import 'package:flutter/widgets.dart';

class TextProv with ChangeNotifier {
  String text;
  String get getText => this.text;

  set setText(value) {
    text = value;
    notifyListeners();
  }
}
