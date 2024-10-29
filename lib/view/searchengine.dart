import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchEngine extends StatefulWidget {
  const SearchEngine({super.key});

  @override
  State<SearchEngine> createState() => _SearchEngineState();
}

class _SearchEngineState extends State<SearchEngine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: Text("Recharge Services",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),

      body: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "google");
              },
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_7xBsOZA2NeuCFqqjJI_1Xzi89WZsfJP8Ow&s",height: 60,width: 70,)),
                    SizedBox(width: 30,),
                    Text("Google",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "yahoo");
              },
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7fwBiPPaRfwEurzwi-5te779LEkDWSobS-A&s",height: 60,width: 70,)),
                    SizedBox(width: 30,),
                    Text("Yahoo",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
