import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Sermons extends StatefulWidget {

  @override
  _SermonsState createState() => _SermonsState();
}

class _SermonsState extends State<Sermons> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) => WillPopScope(
    onWillPop: () async {
      if (await controller.canGoBack()) {
        controller.goBack();

        return false;
      } else {
        return true;
      }
    },

    child: SafeArea(
      child: Scaffold(
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://bawathitchurch.com/sermons/',
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
        ),
      ),
    ),
  );
}

