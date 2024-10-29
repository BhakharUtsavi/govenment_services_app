import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/web_provider.dart';

class Dominos_GoToSite extends StatefulWidget {
  const Dominos_GoToSite({super.key});

  @override
  State<Dominos_GoToSite> createState() => _Dominos_GoToSiteState();
}

class _Dominos_GoToSiteState extends State<Dominos_GoToSite> {
  InAppWebViewController? inAppWebViewController;
  PullToRefreshController? pullToRefreshController;
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    pullToRefreshController = PullToRefreshController(
      onRefresh: () async {
        WebUri? webUri = await inAppWebViewController?.getUrl();
        inAppWebViewController?.loadUrl(urlRequest: URLRequest(url: webUri));
      },
    );
  }

  void allBookmarks() {
    showModalBottomSheet(context: context, builder: (context) {
      return SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.close,color: Colors.black,),
                    Text("DISMISS",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView(
                children: context.read<WebProvider>().addBookMarks.map((bookmark) {
                  return ListTile(
                    title: Text(bookmark),
                    onTap: (){
                      inAppWebViewController?.loadUrl(urlRequest: URLRequest(url: WebUri(bookmark)));
                      Navigator.of(context).pop();
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
    }
    );
  }

  void searchEngine() {
    showDialog(context: context, builder: (context){
      return AlertDialog(
          title: Text("Choose Search Engine"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(onPressed: (){
                inAppWebViewController?.loadUrl(urlRequest: URLRequest(url: WebUri("https://www.google.com/")));
                Navigator.pop(context);
              }, child: Text("Google")),

              TextButton(onPressed: (){
                inAppWebViewController?.loadUrl(urlRequest: URLRequest(url: WebUri("https://in.search.yahoo.com/")));
                Navigator.pop(context);
              }, child: Text("Yahoo")),

              TextButton(onPressed: (){
                inAppWebViewController?.loadUrl(urlRequest: URLRequest(url: WebUri("https://www.bing.com/")));
                Navigator.pop(context);
              }, child: Text("Bing")),

              TextButton(onPressed: (){
                inAppWebViewController?.loadUrl(urlRequest: URLRequest(url: WebUri("https://duckduckgo.com/")));
                Navigator.pop(context);
              }, child: Text("Duck Duck Go")),
            ],
          )
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    String url = ModalRoute.of(context)!.settings.arguments as String;
    var webProvider = Provider.of<WebProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        title: Text("My Browser",
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          PopupMenuButton(
            color: Colors.white,
            itemBuilder: (context){
              return [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.save), Text("All Bookmarks")
                    ],
                  ),
                  value: "allbookmarks",
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.location_searching_outlined), Text("Seach Engine")
                    ],
                  ),
                  value: "searchengine",
                ),
              ];
            },
            onSelected: (val) {
              print("onSelected $val");
              if (val == "allbookmarks") {
                allBookmarks();
              }
              if (val == "searchengine") {
                searchEngine();
              }
            },
          ),
        ],
      ),

      bottomNavigationBar: Row(
        children: [
          IconButton(
            onPressed: () {
              inAppWebViewController?.goBack();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          Expanded(
            child: TextFormField(
              controller: searchController,
              onFieldSubmitted: (value) {
                String loadData = "https://www.google.com/search?q=$value";
                inAppWebViewController?.loadUrl(
                  urlRequest: URLRequest(url: WebUri(loadData)),
                );
                if (!webProvider.addBookMarks.contains(loadData)) {
                  webProvider.addBookMarks.add(loadData);
                }
              },
              decoration: InputDecoration(hintText: "Search or enter URL"),
            ),
          ),
          IconButton(
            onPressed: () {
              inAppWebViewController?.goForward();
            },
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),

      body: Column(
        children: [
          Consumer<WebProvider>(
            builder: (context, value, child) {
              if (value.progress >= 1) {
                return SizedBox.shrink();
              }
              return LinearProgressIndicator(
                value: value.progress,
              );
            },
          ),
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(url: WebUri(url)),
              onWebViewCreated: (controller) {
                inAppWebViewController = controller;
              },
              onLoadStop: (controller, url) {
                print("onLoadStop $url");
                pullToRefreshController?.endRefreshing();
              },
              onProgressChanged: (controller, progress) {
                print("onProgressChanged $progress");
                if (progress >= 100) {
                  pullToRefreshController?.endRefreshing();
                }
                Provider.of<WebProvider>(context).onChangeProgress(progress);
              },
              pullToRefreshController: pullToRefreshController,
            ),
          ),
        ],
      ),
    );
  }
}
