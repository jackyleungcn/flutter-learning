import 'package:flutter/material.dart';
import './ChangeNotifierProvider.dart';
import './CartModel.dart';
import './Consumer.dart';

class ProviderA extends StatefulWidget {
  @override
  _ProviderA createState() => new _ProviderA();
}

class _ProviderA extends State<ProviderA> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChangeNotifierProvider<CartModel>(
        data: CartModel(),
        child: Builder(
          builder: (content) {
            return Column(
              children: <Widget>[
                Consumer<CartModel>(
                    builder: (context, cart) => Text('总价：${cart.totalPrice}')),
                Consumer<CartModel>(
                  listen: false,
                  builder: (context, cart) {
                    print("RaisedButton build");
                    return RaisedButton(
                      child: Text("添加商品"),
                      onPressed: () {
                        cart.add(Item(20.0, 1));
                      },
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
