import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes_fire/Learn/multi_provider/component/cart.dart';
import 'package:tes_fire/Learn/multi_provider/component/money.dart';
import 'package:tes_fire/Learn/multi_provider/multi_provider.dart';
import 'package:tes_fire/screen/home.dart';

void main() {
  runApp(MaterialApp(
    themeMode: ThemeMode.dark,
    theme: ThemeData(backgroundColor: Colors.purple),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: Home(),
    );
  }
}
