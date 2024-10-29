import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTrain extends StatefulWidget {
  const SearchTrain({super.key});

  @override
  State<SearchTrain> createState() => _SearchTrainState();
}

class _SearchTrainState extends State<SearchTrain> {
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
                          String? url="https://etrain.info/trains";
                          Navigator.of(context).pushNamed("searchtraingotosite",arguments: url);
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
        title: Text("Search Train",
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
                      Text("Search Train is an online platform designed to facilitate the search and booking of train tickets across various rail networks, primarily focusing on Indian Railways. It provides users with real-time information about train schedules, availability, and ticket pricing, making it easier to plan and manage train travel.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Real-time Train Information: Access to up-to-date schedules, arrival and departure times, and platform details for trains across the network.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Ticket Booking: Simple and secure online booking system for purchasing train tickets, including options for seat selection and class of travel.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Availability Check: Users can check the availability of seats on specific trains for their preferred travel dates",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("User-Friendly Interface: Easy-to-navigate platform that allows users to search for trains based on various criteria such as source, destination, date, and time.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Mobile Compatibility: Accessible via mobile devices, enabling users to book tickets and check schedules on the go.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Cancellation and Refund Services: Provides information about cancellation policies and procedures for getting refunds on canceled tickets.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
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
