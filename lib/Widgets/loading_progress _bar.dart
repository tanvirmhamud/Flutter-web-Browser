// import 'package:browser/Pagetab/searchpage.dart';
// import 'package:browser/Provider/provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
// import 'package:provider/provider.dart';

// class LoadingProgressBar extends StatefulWidget {
//   const LoadingProgressBar({Key? key}) : super(key: key);

//   @override
//   _LoadingProgressBarState createState() => _LoadingProgressBarState();
// }

// class _LoadingProgressBarState extends State<LoadingProgressBar> {


//   @override
//   Widget build(BuildContext context) {
//     final providerdata = Provider.of<Webcontroll>(context);
//     return WebviewScaffold(
//       withJavascript: true,
//       withLocalStorage: true,
//       withZoom: true,
//       appBar: AppBar(
       
//         backgroundColor: Colors.green,

//         bottom: PreferredSize(
//             preferredSize: Size.fromHeight(5.0),
//             child: _progressBar(providerdata.lineProgress, context)),
//       ),
//       url: providerdata.searchurl,
//     );
//   }

//   _progressBar(double progress, BuildContext context) {
//     return LinearProgressIndicator(
//       backgroundColor: Colors.white70.withOpacity(0),
//       value: progress == 1.0 ? 0 : progress,
//       valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
//     );
//   }
// }
