import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Team extends StatefulWidget {

  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
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
          initialUrl: 'https://bawathitchurch.com/team',
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
        ),
      ),
    ),
  );
}

