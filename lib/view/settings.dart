import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Colors.blue.shade900,
        title: Text(
          "Online Seva",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                String url = "https://play.google.com/store/search?q=digilocker&c=apps";
                Navigator.pushNamed(context, "myWebPage", arguments: url);
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                    right: BorderSide(
                      color: Colors.blue.shade900,
                      width: 6,
                  )),
                ),
                child: Center(
                  child: Text("Rate",
                    style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                String url = "https://www.digilocker.gov.in/about/privacy-policy";
                Navigator.pushNamed(context, "myWebPage", arguments: url);
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border(
                      right: BorderSide(
                        color: Colors.blue.shade900,
                        width: 6,
                      )),
                ),
                child: Center(
                  child: Text("Privacy Policy",
                    style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
