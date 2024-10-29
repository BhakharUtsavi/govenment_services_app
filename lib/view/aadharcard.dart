import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AadharCard extends StatefulWidget {
  const AadharCard({super.key});

  @override
  State<AadharCard> createState() => _AadharCardState();
}

class _AadharCardState extends State<AadharCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: Text("Govenment Proof & ID Card",
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
                Navigator.pushNamed(context, "aadharservices",);
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
                    SizedBox(width: 10,),
                    Image.network("https://m.economictimes.com/thumb/msid-61393843,width-1600,height-900,resizemode-4,imgsize-38855/aadhaar-1.jpg",height: 60,width: 70,),
                    SizedBox(width: 40,),

                    Text("Aadhar Card",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    Container(
                      height: 80,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),),
                      ),
                      child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
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
                Navigator.pushNamed(context, "voterservices",);
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
                    SizedBox(width: 10,),
                    Image.network("https://thumbs.dreamstime.com/b/cartoon-gesture-icon-mockup-d-hand-putting-voting-paper-ballot-box-elections-voting-going-to-vote-citizen-participation-318583663.jpg",height: 70,width: 70,),
                    SizedBox(width: 40,),
                    Text("Voter Card",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    Container(
                      height: 80,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),),
                      ),
                      child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
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
