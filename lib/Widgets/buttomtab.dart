import 'package:browser/Provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtomTab extends StatefulWidget {
  const ButtomTab({Key? key}) : super(key: key);

  @override
  _ButtomTabState createState() => _ButtomTabState();
}

class _ButtomTabState extends State<ButtomTab> {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Webcontroll>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: Offset(1, 0),
          blurRadius: 1.0,
          color: Colors.black.withOpacity(0.1),
        )
      ]),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                providerdata.webViewController!.goBack();
              },
              icon: Icon(Icons.arrow_back_ios)),
          IconButton(
              onPressed: () {
                providerdata.webViewController!.goForward();
              },
              icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}
