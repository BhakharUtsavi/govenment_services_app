import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Flipkart extends StatefulWidget {
  const Flipkart({super.key});

  @override
  State<Flipkart> createState() => _FlipkartState();
}

class _FlipkartState extends State<Flipkart> {
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
                          String? url="https://www.flipkart.com/";
                          Navigator.of(context).pushNamed("flipkartgotosite",arguments: url);
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
        title: Text("FlipKart",
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
                      Text("Flipkart is one of India’s leading e-commerce platforms, offering a wide range of products across various categories, including electronics, fashion, home goods, books, and more. Founded in 2007, Flipkart has revolutionized online shopping in India by providing a seamless and customer-centric shopping experience.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Vast Product Range: Offers millions of products across categories such as electronics, clothing, home appliances, groceries, and personal care items, catering to diverse consumer needs.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("User-Friendly Interface: The platform features an intuitive design that allows users to easily browse, search, and filter products, making shopping convenient and efficient.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Secure Payment Options: Provides multiple payment methods, including credit/debit cards, net banking, UPI, and cash on delivery (COD), ensuring secure and flexible transactions.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Customer Reviews and Ratings: Allows customers to share their experiences and feedback on products, helping others make informed purchasing decisions.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Fast Delivery: Flipkart offers various delivery options, including express delivery and same-day delivery in select areas, ensuring timely arrival of products.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),

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
