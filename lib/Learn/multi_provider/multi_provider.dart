import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes_fire/Learn/multi_provider/component/cart.dart';
import 'package:tes_fire/Learn/multi_provider/component/money.dart';

class MultiProviderManagement extends StatelessWidget {
  const MultiProviderManagement({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle balanceStyle = TextStyle(
        fontWeight: FontWeight.w700, fontSize: 16, color: Colors.purple);

    var resBody = Container();
    var body = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          resBody,
          MoneyContainer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Balance",
                style: balanceStyle,
              ),
              Consumer<Money>(
                builder: (context, money, _) => Container(
                  padding: EdgeInsets.only(right: 12.0),
                  margin: EdgeInsets.only(left: 12.0),
                  width: 200,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(9),
                    color: money.color().withOpacity(0.3),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Money>(
                      builder: (context, money, _) => Text(
                        "${money.balance}",
                        style: balanceStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 12.0, left: 12.0),
            width: 300,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purple),
              borderRadius: BorderRadius.circular(9),
              color: Colors.purple.withOpacity(0.3),
            ),
            child: Consumer<Cart>(
              builder: (context, cart, _) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Apple (500) x ${cart.qty.toString()}",
                    style: balanceStyle,
                  ),
                  Text(
                    "${500 * cart.qty}",
                    style: balanceStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    var floatingActionButton = Consumer<Cart>(
      builder: (context, cart, _) => Consumer<Money>(
        builder: (context, money, _) => Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                if (money.balance >= 500) {
                  cart.qty += 1;
                  money.balance -= 500;
                } else {
                  print("Uang Tidak Cukup");
                }
              },
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                if (cart.qty > 0) {
                  cart.qty -= 1;
                  money.balance += 500;
                }
                var resBody = Container(
                  width: 200,
                  height: 100,
                  color: Colors.white,
                );
              },
              child: Icon(Icons.minimize_rounded),
            ),
          ],
        ),
      ),
    );
    var appBar = AppBar(
      title: Text("Multi Provider State"),
      centerTitle: true,
      backgroundColor: Colors.purple,
    );

    // Scaffold
    return Scaffold(
      floatingActionButton: floatingActionButton,
      appBar: appBar,
      body: body,
    );
  }
}
