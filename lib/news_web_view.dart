import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class NewsWebView extends StatefulWidget {
  String url;
  NewsWebView({super.key, required this.url});

  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: widget.url,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // elevation: 0,
        title:  const Row(
          children: [
            Text("Daily", style: TextStyle(
              fontSize: 28,
              color: Colors.black,
            ),),
            Text("News",style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),)
          ],
        ),
      ),
    );
  }
}
