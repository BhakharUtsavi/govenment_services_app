import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateAtEnrollmentCenter extends StatefulWidget {
  const UpdateAtEnrollmentCenter({super.key});

  @override
  State<UpdateAtEnrollmentCenter> createState() => _UpdateAtEnrollmentCenterState();
}

class _UpdateAtEnrollmentCenterState extends State<UpdateAtEnrollmentCenter> {
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
                          String? url="https://appointments.uidai.gov.in/GenericErrorPage.htm?aspxerrorpath=/easearch.aspx";
                          Navigator.of(context).pushNamed("updateatenrollmentcentergotosite",arguments: url);
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
        title: Text("Update at Enrolment Centers",
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
                height: 650,
                width: 800,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("Enrolment & Update Centers are authorized facilities set up by the Unique Identification Authority of India (UIDAI) to facilitate Aadhaar enrollment and updates for residents. These centers allow individuals to apply for a new Aadhaar card, as well as to make changes or corrections to their existing Aadhaar details, such as name, address, date of birth, mobile number, and biometrics (photo, fingerprints, and iris scan).",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("New Aadhaar Enrollment: Individuals who have not previously enrolled can visit these centers to apply for a new Aadhaar. The process involves submitting demographic information and capturing biometric data.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Update/Correction of Aadhaar Details: For individuals with an existing Aadhaar, centers facilitate updates or corrections to personal information, such as address, phone number, name, date of birth, and biometrics.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Document Verification: Staff at the centers verify necessary documents for enrollment or update requests to ensure accuracy.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Assistance and Guidance: Trained operators at the centers provide assistance with the Aadhaar application process, document submission, and troubleshooting issues related to Aadhaar.",style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),

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
