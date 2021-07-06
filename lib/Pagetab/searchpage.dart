import 'dart:async';

import 'package:browser/Provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class searchPageTextFild extends StatefulWidget {
  const searchPageTextFild({Key? key}) : super(key: key);

  @override
  _searchPageTextFildState createState() => _searchPageTextFildState();
}

class _searchPageTextFildState extends State<searchPageTextFild> {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Webcontroll>(context);
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        color: Colors.grey[300],
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: 5.0,
                  left: 10.0,
                  right: 10.0,
                ),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                child: CupertinoTextField(
                  controller: providerdata.urlbarcontroller,
                  onSubmitted: (String url) {
                    providerdata.urlupdate(url);
                    providerdata.webViewController!.loadUrl(url);
                  },
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
