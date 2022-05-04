import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            initialUrl: 'https://bawathitchurch.com',
            onWebViewCreated: (controller) {
              this.controller = controller;
            },
          ),
      ),
    ),
    );
  }

