import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

import 'package:minitv/assets/backend-api.dart' as backend;
import 'package:minitv/main/show_message.dart';
import 'package:minitv/main/global.dart';
import 'package:shared_preferences/shared_preferences.dart';



class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  var isLoading = false;
  InAppWebViewController? webViewController;
  PullToRefreshController? refreshController;
  var initialUrl = "https://www.amazon.in/minitv";
  double progress = 0;
  var urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                InAppWebView(
                  onLoadStart: (controller, url) {
                    setState(() {
                      isLoading = true;
                    });
                  },
                  onLoadStop: (controller, url) {
                    setState(() {
                      isLoading = false;
                    });
                  },
                  onProgressChanged: (controller, url){
                    setState(() {
                      progress = progress / 100;
                    });
                  },
                  onWebViewCreated: (controller)=> webViewController = controller,
                  initialUrlRequest: URLRequest(url: WebUri(initialUrl.toString())),
                ),
                Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: isLoading,
                  child: CircularProgressIndicator(
                      valueColor: const AlwaysStoppedAnimation(Colors.redAccent),
                      // value: progress
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
