import 'package:browser/Pagetab/searchpage.dart';
import 'package:browser/Widgets/Webview.dart';
import 'package:browser/Widgets/buttomtab.dart';
import 'package:browser/Widgets/loading_progress%20_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            searchPageTextFild(),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      child: WebViewPage(),
                    )
                  ],
                ),
              ),
            ),
            ButtomTab(),
          ],
        ),
      ),
    );
  }
}
