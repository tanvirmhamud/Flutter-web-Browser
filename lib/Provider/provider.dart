import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webcontroll extends ChangeNotifier {
  WebViewController? webViewController;
  final urlbarcontroller = TextEditingController(text: "");
  String _searchurl = "";
  double linerProgress = 0.0;

  String get searchurl => _searchurl;
  double get lineprogress => linerProgress;

  void urlupdate(String url) {
    _searchurl = url;
    notifyListeners();
  }

  void loadurlweb(String url) {
    webViewController!.loadUrl(url);
    notifyListeners();
  }

  void registerWebview(WebViewController wvc) {
    webViewController = wvc;
    notifyListeners();
  }

  void linearpogress(double progress) {
    linerProgress = progress;
    notifyListeners();
  }
}
