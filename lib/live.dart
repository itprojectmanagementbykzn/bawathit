import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Live extends StatefulWidget {

  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> {
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
          initialUrl: 'https://bawathityangon.online.church/',
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
        ),
      ),
    ),
  );
}

