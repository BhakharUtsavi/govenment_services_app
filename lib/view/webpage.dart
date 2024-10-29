import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebPage extends StatefulWidget {
  const WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {

  InAppWebViewController? inAppWebViewController;

  @override
  Widget build(BuildContext context) {

    String url=ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri(url)),
        onWebViewCreated: (InAppWebViewController controller) {
          inAppWebViewController=controller;
        },
      ),
    );
  }
}
