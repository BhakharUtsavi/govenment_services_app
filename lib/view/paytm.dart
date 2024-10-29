import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Paytm extends StatefulWidget {
  const Paytm({super.key});

  @override
  State<Paytm> createState() => _PaytmState();
}

class _PaytmState extends State<Paytm> {
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
                          String? url="https://paytm.com/";
                          Navigator.of(context).pushNamed("paytmgotosite",arguments: url);
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
        title: Text("Paytm",
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
                      Text("Paytm is a leading digital payment and financial services platform in India, founded in 2010 by Vijay Shekhar Sharma. Initially starting as a mobile recharge and bill payment platform, Paytm has evolved to offer a wide range of services, including online shopping, financial products, and payment solutions for both consumers and businesses.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Digital Wallet: Paytm allows users to store money in a digital wallet, facilitating quick and easy transactions for purchases, bill payments, and money transfers.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Payments: Users can make payments for a variety of services, including mobile recharges, utility bills, and online shopping, all through the Paytm app.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Paytm Payments Bank: Offers banking services, including savings accounts, fixed deposits, and digital banking features, allowing users to manage their finances seamlessly.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("QR Code Payments: Merchants can generate QR codes for easy payments, enabling customers to make instant transactions by scanning the code with the Paytm app.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Paytm Mall: An e-commerce platform that enables users to shop for a wide range of products, including electronics, clothing, and groceries, often with special deals and discounts.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
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
