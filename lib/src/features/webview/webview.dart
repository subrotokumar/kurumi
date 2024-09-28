import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:kurumi/src/core/utils/utils.functions.dart';

final navBarVisibilityProvider = StateProvider.autoDispose<bool>((ref) => true);

class InAppWebview extends ConsumerStatefulWidget {
  const InAppWebview({super.key, required this.url, this.title});
  final String url;
  final String? title;

  @override
  ConsumerState<InAppWebview> createState() => _InAppWebviewState();
}

class _InAppWebviewState extends ConsumerState<InAppWebview> {
  final GlobalKey webViewKey = GlobalKey();
  StreamController<bool> navController = StreamController();
  bool isNavVisible = true;

  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  late PullToRefreshController pullToRefreshController;
  late String url;
  double progress = 0;
  final urlController = TextEditingController();

  @override
  void initState() {
    url = widget.url;
    super.initState();
    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(
        color: Colors.blue,
      ),
      onRefresh: () async {
        if (Platform.isAndroid) {
          webViewController?.reload();
        } else if (Platform.isIOS) {
          webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
  }

  @override
  void dispose() {
    navController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        if (notification.direction == ScrollDirection.forward) {
          ref.read(navBarVisibilityProvider.notifier).update((state) => true);
        } else if (notification.direction == ScrollDirection.reverse) {
          ref.read(navBarVisibilityProvider.notifier).update((state) => false);
        }
        Timer(
          const Duration(milliseconds: 1000),
          () => navController.sink.add(isNavVisible),
        );
        return true;
      },
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipOval(
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            height: 40,
                            width: 40,
                            color: Colors.white12,
                            child: const Icon(Icons.arrow_back_ios_new_rounded),
                          ),
                        ),
                      ),
                      Text(
                        widget.title ?? '',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      ClipOval(
                        child: GestureDetector(
                          onTap: () => webViewController?.reload(),
                          child: Container(
                            height: 40,
                            width: 40,
                            color: Colors.white12,
                            child: const Icon(Icons.refresh),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: InAppWebView(
                        key: webViewKey,
                        initialUrlRequest: URLRequest(url: WebUri(url)),
                        initialOptions: options,
                        pullToRefreshController: pullToRefreshController,
                        onWebViewCreated: (controller) {
                          webViewController = controller;
                        },
                        onLoadStart: (controller, url) {
                          setState(() {
                            this.url = url.toString();
                            urlController.text = this.url;
                          });
                        },
                        androidOnPermissionRequest:
                            (controller, origin, resources) async {
                          return PermissionRequestResponse(
                              resources: resources,
                              action: PermissionRequestResponseAction.GRANT);
                        },
                        shouldOverrideUrlLoading:
                            (controller, navigationAction) async {
                          var uri = navigationAction.request.url!;

                          if (![
                            "http",
                            "https",
                            "file",
                            "chrome",
                            "data",
                            "javascript",
                            "about"
                          ].contains(uri.scheme)) {
                            if (await canLaunchUrl(uri)) {
                              // Launch the App
                              await launchUrl(uri);
                              // and cancel the request
                              return NavigationActionPolicy.CANCEL;
                            }
                          }

                          return NavigationActionPolicy.ALLOW;
                        },
                        onLoadStop: (controller, url) async {
                          pullToRefreshController.endRefreshing();
                          setState(() {
                            this.url = url.toString();
                            urlController.text = this.url;
                          });
                        },
                        onLoadError: (controller, url, code, message) {
                          pullToRefreshController.endRefreshing();
                        },
                        onProgressChanged: (controller, progress) {
                          if (progress == 100) {
                            pullToRefreshController.endRefreshing();
                          }
                          setState(() {
                            this.progress = progress / 100;
                            urlController.text = url;
                          });
                        },
                        onUpdateVisitedHistory:
                            (controller, url, androidIsReload) {
                          setState(() {
                            this.url = url.toString();
                            urlController.text = this.url;
                          });
                        },
                        onConsoleMessage: (controller, consoleMessage) {
                          log.d(consoleMessage);
                        },
                      ),
                    ),
                  ),
                ),
                progress < 1.0
                    ? LinearProgressIndicator(
                        value: progress,
                        color: Colors.white38,
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
