import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookTrainTicket extends StatefulWidget {
  const BookTrainTicket({super.key});

  @override
  State<BookTrainTicket> createState() => _BookTrainTicketState();
}

class _BookTrainTicketState extends State<BookTrainTicket> {
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
                          String? url="https://www.bookaflight.co.za/";
                          Navigator.of(context).pushNamed("bookaflightgotosite",arguments: url);
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
        title: Text("Book Train Ticket",
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
                      Text("Book Train Ticket is an online service that allows passengers to easily search, compare, and purchase train tickets for various rail networks, with a strong emphasis on convenience and efficiency. This platform caters to travelers looking to reserve seats on trains across multiple routes and regions, primarily focusing on Indian Railways but often including international rail options as well.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Comprehensive Search Options: Users can search for trains based on their departure and arrival locations, travel dates, and preferred times, ensuring they find the best options for their journey.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Real-Time Availability: Provides up-to-date information on seat availability, helping users make informed decisions when booking their tickets.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("User-Friendly Booking Process: A streamlined booking interface that guides users through selecting their train, choosing seats, and completing the payment process quickly.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Multiple Payment Options: Supports various payment methods, including credit/debit cards, net banking, and digital wallets, ensuring secure transactions.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Cancellation and Modification: Offers easy cancellation and modification of bookings, with clear policies and procedures to follow.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
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
