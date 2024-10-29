import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: Text("Online Seva",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: SizedBox(),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed("settings");
          }, icon: Icon(Icons.settings,color: Colors.white,)),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20,left: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("aadharcard");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://i.pinimg.com/736x/6c/e5/53/6ce553c49d964118b2316146304b3736.jpg",height: 90,width: 90,),
                          Text("GOVERNMENT \n PROOF & ID CARD",style: GoogleFonts.raleway(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("shoppingservices");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://img.lovepik.com/element/40247/2159.png_1200.png",height:80,width: 80,),
                          SizedBox(height: 10,),
                          Text("SHOPPING",style: GoogleFonts.raleway(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("couriesservices");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4jvLvcNLuBueu21wsO1sSWrKaJZ6x1ipxmg&s",height: 70,width: 70,),
                          Text("COURIER \n SERVICES",style: GoogleFonts.raleway(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("travelservices");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://img.freepik.com/premium-photo/airplane-cartoon-logo-14_639744-949.jpg",height: 100,width: 100,),
                          Text("TRAVEL",style: GoogleFonts.raleway(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("socialnetworking");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://www.pngitem.com/pimgs/m/423-4235296_social-media-marketing-png-transparent-cartoons-social-media.png",height: 75,width: 75,),
                          Text("SOCIAL \n NET WORKING",style: GoogleFonts.raleway(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("recharge");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRniXCZ9K3JBwxolZKby8Op2oRZKNhn25GMfQ&s",height: 90,width: 90,),
                          Text("RECHARGE",style: GoogleFonts.raleway(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("searchengine");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJSAcANizWrrc6cRhfEG51huktIL50bJUwfg&s",height: 75,width: 75,),
                          SizedBox(height: 10,),
                          Text("SEARCH \n ENGINE",style: GoogleFonts.raleway(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("foodzone");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network("https://img.freepik.com/premium-vector/burger-logo-template_441059-21.jpg",height: 90,width: 90,),
                          Text("FOOD ZONE",style: GoogleFonts.raleway(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
