import 'dart:async';

import 'package:browser/Provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  String url = "https://www.";
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Webcontroll>(context);
    return Container(
      child: Column(
        children: [
          LinearProgressIndicator(
            minHeight: 2.0,
            backgroundColor: Colors.white70.withOpacity(0),
            value: providerdata.lineprogress == 1.0
                ? 0.0
                : providerdata.lineprogress,
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
          Expanded(
            child: WebView(
              initialUrl: "https://www.google.com",
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
                providerdata.registerWebview(webViewController);
              },
              allowsInlineMediaPlayback: true,
              gestureNavigationEnabled: true,
              debuggingEnabled: true,
              onProgress: (int progress) {
                providerdata.linearpogress(progress.toDouble() / 100);
              },
              onPageStarted: (String url) {
                print('Page started loading: $url');
              },
              onPageFinished: (String url) {
                print('Page finished loading: $url');
                providerdata.urlbarcontroller.text = url;
                providerdata.urlupdate(url);
              },
            ),
          ),
        ],
      ),
    );
  }
}
