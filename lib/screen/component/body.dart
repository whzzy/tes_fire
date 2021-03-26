import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tes_fire/screen/component/application_color.dart';

class Body extends StatelessWidget {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ApplicationColor>(
              builder: (_, appcolor, __) => AnimatedContainer(
                decoration: BoxDecoration(
                    color: appcolor.color,
                    borderRadius: BorderRadius.circular(20)),
                duration: Duration(milliseconds: 500),
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Consumer<ApplicationColor>(
              builder: (_, appcolor, __) => Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Dark Mode",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            color: appcolor.color)),
                    Switch(
                        inactiveTrackColor: Colors.red[200],
                        inactiveThumbColor: appcolor.color,
                        activeColor: appcolor.color,
                        value: appcolor.isOn,
                        onChanged: (value) {
                          appcolor.isOn = !appcolor.isOn;
                        }),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
