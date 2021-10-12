import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class web extends StatefulWidget {
  final String url;
  const web(this.url);

  @override
  _webState createState() => _webState();
}

class _webState extends State<web> {
  @override
  Widget build(BuildContext context) {
    return WebView(initialUrl: widget.url);
  }
}
