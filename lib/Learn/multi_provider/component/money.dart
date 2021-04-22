import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Money with ChangeNotifier {
  int _balance = 10000;
  String _nama = "";
  String get nama => this._nama;

  set nama(String value) {
    _nama = value;
    notifyListeners();
  }

  int get balance => _balance;

  set balance(int value) {
    _balance = value;
    notifyListeners();
  }

  Color color() =>
      (_balance <= 0 ? Colors.red : Colors.purple.withOpacity(0.5));
}

class MoneyContainer extends StatefulWidget with ChangeNotifier {
  MoneyContainer({Key key, Widget child}) : super(key: key);

  Widget child;
  @override
  _MoneyContainerState createState() => _MoneyContainerState();
}

class _MoneyContainerState extends State<MoneyContainer> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Money>(
      builder: (context, money, _) => Container(
        width: 200,
        height: 200,
        color: money.color(),
        child: Text(money.nama),
      ),
    );
  }
}
