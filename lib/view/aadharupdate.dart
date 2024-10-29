import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Aadhar_Update extends StatefulWidget {
  const Aadhar_Update({super.key});

  @override
  State<Aadhar_Update> createState() => _Aadhar_UpdateState();
}

class _Aadhar_UpdateState extends State<Aadhar_Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: Text("Aadhar Update",
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
                Navigator.pushNamed(context, "updateatenrollmentcenter");
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
                        child: Image.network("https://m.economictimes.com/thumb/msid-61393843,width-1600,height-900,resizemode-4,imgsize-38855/aadhaar-1.jpg",height: 60,width: 70,)),
                    SizedBox(width: 30,),
                    Text("Update at Enrollment Center",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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
                Navigator.pushNamed(context, "checkstatusupdatedone");
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
                        child: Image.network("https://m.economictimes.com/thumb/msid-61393843,width-1600,height-900,resizemode-4,imgsize-38855/aadhaar-1.jpg",height: 60,width: 70,)),
                    SizedBox(width: 30,),
                    Text("Check Status : Update Done..",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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
                Navigator.pushNamed(context, "aadharupdaterequest");
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
                        child: Image.network("https://m.economictimes.com/thumb/msid-61393843,width-1600,height-900,resizemode-4,imgsize-38855/aadhaar-1.jpg",height: 60,width: 70,)),
                    SizedBox(width: 30,),
                    Text("Aadhar Update Request(Online)",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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
                Navigator.pushNamed(context, "checkstatusupdatedoneon");
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
                        child: Image.network("https://m.economictimes.com/thumb/msid-61393843,width-1600,height-900,resizemode-4,imgsize-38855/aadhaar-1.jpg",height: 60,width: 70,)),
                    SizedBox(width: 30,),
                    Text("Check Status : Update done On.",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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
                Navigator.pushNamed(context, "aadharupdatehistory");
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
                        child: Image.network("https://m.economictimes.com/thumb/msid-61393843,width-1600,height-900,resizemode-4,imgsize-38855/aadhaar-1.jpg",height: 60,width: 70,)),
                    SizedBox(width: 30,),
                    Text("Aadhar Update History",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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
