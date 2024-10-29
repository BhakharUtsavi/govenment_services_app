import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Yahoo extends StatefulWidget {
  const Yahoo({super.key});

  @override
  State<Yahoo> createState() => _YahooState();
}

class _YahooState extends State<Yahoo> {
  void goToSite() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(""),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Are you sure you want to go to site?",
                  style: GoogleFonts.raleway(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10,),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI0tCQae-KWelKspgStsk2FolgWiSCMRJ_zQ&s",height: 200,width: 200,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 15,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: (){
                          String? url="https://in.search.yahoo.com/";
                          Navigator.of(context).pushNamed("yahoogotosite",arguments: url);
                        }, child: Text("Go To Site")),
                    SizedBox(width: 20,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: (){
                          Navigator.of(context).pop();
                        }, child: Text("Cancle")),
                    SizedBox(width: 10,),
                  ],
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white,),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: Text("Yahoo",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed("home");
          }, icon: Icon(Icons.home,color: Colors.white,))
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
          child: Column(
            children: [
              Container(
                height: 720,
                width: 800,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("Yahoo is a web services provider and technology company founded in 1994 by Jerry Yang and David Filo. Originally launched as a directory of websites, Yahoo has evolved into a diverse digital media and technology company that offers various services, including search, email, news, finance, sports, and entertainment.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Search Engine: Yahoo Search allows users to find information across the web, providing search results, news articles, and relevant content.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Yahoo Mail: A popular email service that offers users a secure and user-friendly interface for sending, receiving, and managing email, along with ample storage space and features like spam protection and organization tools.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Yahoo News: A comprehensive news platform that aggregates articles and updates from various sources, covering a wide range of topics, including politics, technology, entertainment, and health",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Yahoo Finance: Provides users with up-to-date financial news, stock market data, and tools for tracking investments, making it a go-to resource for investors and financial enthusiasts.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {
                    goToSite();
                  }, child: Text("Go To Site")),
            ],
          ),
        ),
      ),
    );
  }
}
