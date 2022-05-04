import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Contact extends StatefulWidget {

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
          initialUrl: 'https://bawathitchurch.com/contact/',
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
        ),
      ),
    ),
  );
}

