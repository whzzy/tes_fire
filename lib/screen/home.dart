import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'component/body.dart';
import 'package:tes_fire/screen/component/application_color.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ApplicationColor>(
      create: (context) => ApplicationColor(),
      child: Consumer<ApplicationColor>(
        builder: (context, appcolor, _) => Scaffold(
          appBar: AppBar(
            actions: [
              Icon(
                Icons.shopping_bag,
                color: appcolor.inActiveColor,
                size: 26,
              ),
              SizedBox(
                width: 6,
              )
            ],
            elevation: 0,
            backgroundColor: appcolor.color,
            centerTitle: true,
            title: Text(
              "Provider state management",
              style: TextStyle(color: appcolor.inActiveColor),
            ),
          ),
          body: Consumer<ApplicationColor>(
              builder: (context, appcolor, _) => AnimatedContainer(
                  color: appcolor.inActiveColor,
                  duration: Duration(seconds: 1),
                  child: Body())),
        ),
      ),
    );
  }
}
