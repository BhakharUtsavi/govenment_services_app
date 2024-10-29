import 'package:flutter/material.dart';
import 'package:govenment_services_app/provider/home_provider.dart';
import 'package:govenment_services_app/provider/mcdonald.dart';
import 'package:govenment_services_app/provider/web_provider.dart';
import 'package:govenment_services_app/view/aadharauthenticationhistory.dart';
import 'package:govenment_services_app/view/aadharauthenticationhistorygotosite.dart';
import 'package:govenment_services_app/view/aadharcard.dart';
import 'package:govenment_services_app/view/aadharcardservices.dart';
import 'package:govenment_services_app/view/aadharenrollment.dart';
import 'package:govenment_services_app/view/aadharservices.dart';
import 'package:govenment_services_app/view/aadharupdate.dart';
import 'package:govenment_services_app/view/aadharupdatehistory.dart';
import 'package:govenment_services_app/view/aadharupdatehistorygotosite.dart';
import 'package:govenment_services_app/view/aadharupdaterequest.dart';
import 'package:govenment_services_app/view/aadharupdaterequestotosite.dart';
import 'package:govenment_services_app/view/airindia.dart';
import 'package:govenment_services_app/view/airindiagotosite.dart';
import 'package:govenment_services_app/view/amazon.dart';
import 'package:govenment_services_app/view/amazongotosite.dart';
import 'package:govenment_services_app/view/andhrapradeshbus.dart';
import 'package:govenment_services_app/view/andhrapradeshbusgotosite.dart';
import 'package:govenment_services_app/view/applyonlineforregofnewvoter.dart';
import 'package:govenment_services_app/view/applyonlineforregofnewvotergotosite.dart';
import 'package:govenment_services_app/view/applyonlineforregofoverseasvoter.dart';
import 'package:govenment_services_app/view/arunachalpradeshbus.dart';
import 'package:govenment_services_app/view/arunachalpradeshbusgotosite.dart';
import 'package:govenment_services_app/view/booktrainticket.dart';
import 'package:govenment_services_app/view/booktrainticketgotosite.dart';
import 'package:govenment_services_app/view/bus.dart';
import 'package:govenment_services_app/view/checkaadharbankaccount.dart';
import 'package:govenment_services_app/view/checkaadharbankaccountgotosite.dart';
import 'package:govenment_services_app/view/checkaadharstatus.dart';
import 'package:govenment_services_app/view/checkaadharstatusgotosite.dart';
import 'package:govenment_services_app/view/checkstatusupdatedone.dart';
import 'package:govenment_services_app/view/checkstatusupdatedonegotosite.dart';
import 'package:govenment_services_app/view/checkstatusupdatedoneon.dart';
import 'package:govenment_services_app/view/checkstatusupdatedoneongotosite.dart';
import 'package:govenment_services_app/view/correctionofentries.dart';
import 'package:govenment_services_app/view/correctionofentriesgotosite.dart';
import 'package:govenment_services_app/view/couriesservices.dart';
import 'package:govenment_services_app/view/dominos.dart';
import 'package:govenment_services_app/view/dominosgotosite.dart';
import 'package:govenment_services_app/view/downloadaadhar.dart';
import 'package:govenment_services_app/view/downloadaadhargotosite.dart';
import 'package:govenment_services_app/view/enrolment&updatecenter.dart';
import 'package:govenment_services_app/view/enrolmentupdatecentergotosite.dart';
import 'package:govenment_services_app/view/facebook.dart';
import 'package:govenment_services_app/view/facebookgotosite.dart';
import 'package:govenment_services_app/view/fedexindia.dart';
import 'package:govenment_services_app/view/fedexindiagotosite.dart';
import 'package:govenment_services_app/view/firstfightcourierlimited.dart';
import 'package:govenment_services_app/view/firstfightcourierlimitedgotosite.dart';
import 'package:govenment_services_app/view/flight.dart';
import 'package:govenment_services_app/view/flipkart.dart';
import 'package:govenment_services_app/view/flipkartgotosite.dart';
import 'package:govenment_services_app/view/foodzone.dart';
import 'package:govenment_services_app/view/getaadharnumberonmobile.dart';
import 'package:govenment_services_app/view/getaadharnumberonmobilegotosite.dart';
import 'package:govenment_services_app/view/google.dart';
import 'package:govenment_services_app/view/googlegotosite.dart';
import 'package:govenment_services_app/view/home.dart';
import 'package:govenment_services_app/view/indianpostakservices.dart';
import 'package:govenment_services_app/view/indianpostalservicesgotosite.dart';
import 'package:govenment_services_app/view/instragram.dart';
import 'package:govenment_services_app/view/instragramgotosite.dart';
import 'package:govenment_services_app/view/localenrollmentupdatecenter.dart';
import 'package:govenment_services_app/view/localenrollmentupdatecentergotosite.dart';
import 'package:govenment_services_app/view/localunlockbiometricsgotosite.dart';
import 'package:govenment_services_app/view/locaulnlockbiomertrics.dart';
import 'package:govenment_services_app/view/login.dart';
import 'package:govenment_services_app/view/mcdonaldgotosite.dart';
import 'package:govenment_services_app/view/myntra.dart';
import 'package:govenment_services_app/view/myntragotosite.dart';
import 'package:govenment_services_app/view/paytm.dart';
import 'package:govenment_services_app/view/paytmgotosite.dart';
import 'package:govenment_services_app/view/phonepe.dart';
import 'package:govenment_services_app/view/phonepegotosite.dart';
import 'package:govenment_services_app/view/recharge.dart';
import 'package:govenment_services_app/view/retrivelost.dart';
import 'package:govenment_services_app/view/retrivelostgotosite.dart';
import 'package:govenment_services_app/view/searchengine.dart';
import 'package:govenment_services_app/view/searchnameinelectroralroll.dart';
import 'package:govenment_services_app/view/searchnameinelectroralrollgotosite.dart';
import 'package:govenment_services_app/view/searchtrain.dart';
import 'package:govenment_services_app/view/searchtraingotosite.dart';
import 'package:govenment_services_app/view/settings.dart';
import 'package:govenment_services_app/view/shoppingservices.dart';
import 'package:govenment_services_app/view/socialnetworking.dart';
import 'package:govenment_services_app/view/splashscreen.dart';
import 'package:govenment_services_app/view/train.dart';
import 'package:govenment_services_app/view/travelservices.dart';
import 'package:govenment_services_app/view/updateatenrollmentcenter.dart';
import 'package:govenment_services_app/view/updateatenrollmentcentergotosite.dart';
import 'package:govenment_services_app/view/verifyaadharnumber.dart';
import 'package:govenment_services_app/view/verifyaadharnumbergotosite.dart';
import 'package:govenment_services_app/view/verifyemailmobilenumber.dart';
import 'package:govenment_services_app/view/verifyemailmobilenumbergototsite.dart';
import 'package:govenment_services_app/view/voteridcardstatus.dart';
import 'package:govenment_services_app/view/voteridcardstatusgotosite.dart';
import 'package:govenment_services_app/view/voterservices.dart';
import 'package:govenment_services_app/view/webpage.dart';
import 'package:govenment_services_app/view/whatsapp.dart';
import 'package:govenment_services_app/view/whatsappgotosite.dart';
import 'package:govenment_services_app/view/yahoo.dart';
import 'package:govenment_services_app/view/yahoogotosite.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=> HomeProvider()),
      ChangeNotifierProvider(create: (context)=> WebProvider()),
      ],
      builder: (context,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/": (context) => Splash_Screen(),
            "login": (context) => Login_Screen(),
            "home": (context) => Home_Page(),
            "settings": (context) => Settings(),
            "myWebPage": (context) => WebPage(),
            "aadharcard": (context) => AadharCard(),
            "aadharservices": (context) => AadharServices(),

            "aadharenrollment": (context) => AadharEnrollment(),
            "enrolmentupdatecenter": (context) => EnrolmentUpdateCenter(),
            "enrolmentupdatecentergotosite": (context) => EnrolmentUpdateCenter_GoTosite(),
            "localenrollmentupdatecenter": (context) => LocalEnrollmentUpdateCenter(),
            "localenrollmentupdatecentergotosite": (context) => LocalEnrollmentUpdateCenterGoToSite(),
            "checkaadharstatus": (context) => CheckAadharStatus(),
            "checkaadharstatusgotosite": (context) => CheckAadharStatus_GoToSite(),
            "downloadaadhar": (context) => DownloadAadhar(),
            "downloadaadhargotosite": (context) => DownloadAadhar_GoToSite(),
            "getaadharnumberonmobile": (context) => GetAadharNumberOnMobile(),
            "getaadharnumberonmobilegotosite": (context) => GetAadharNumberOnMobile_GoToSite(),
            "retrivelost": (context) => RetriveLost(),
            "retrivelostgotosite": (context) => RetriveLost_GoToSite(),

            "aadharcardupdate": (context) => Aadhar_Update(),
            "updateatenrollmentcenter": (context) => UpdateAtEnrollmentCenter(),
            "updateatenrollmentcentergotosite": (context) => UpdateAtEnrollmentCenter_GoToSite(),
            "checkstatusupdatedone": (context) => CheckStatusUpdateDone(),
            "checkstatusupdatedonegotosite": (context) => CheckStatusUpdateDone_GoToSite(),
            "aadharupdaterequest": (context) => AadharUpdateRequest(),
            "aadharupdaterequestotosite": (context) => AadharUpdateRequesToToSite(),
            "checkstatusupdatedoneon": (context) => CheckStatusUpdateDoneOn(),
            "checkstatusupdatedoneongotosite": (context) => CheckStatusUpdateDoneOn_GoToSite(),
            "aadharupdatehistory": (context) => AadharUpdateHistory(),
            "aadharupdatehistorygotosite": (context) => AadharUpdateHistory_GoToSite(),

            "aadharcardservices": (context) => AadharCardServices(),
            "verifyaadharnumber": (context) => VerifyAadharNumber(),
            "verifyaadharnumbergotosite": (context) => VerifyAadharNumberGoToSite(),
            "verifyemailmobilenumber": (context) => VerifyEmailMobileNumber(),
            "verifyemailmobilenumbergotosite": (context) => VerifyEmailMobileNumber_GoToSite(),
            "localunlockbiometrics": (context) => LocalUnlockBiometrics(),
            "localunlockbiometricsgotosite": (context) => LocalUnlockBiometricsGoToSite(),
            "checkaadharbankaccount": (context) => CheckAadharBankAccount(),
            "checkaadharbankaccountgotosite": (context) => CheckAadharBankAccount_GoToSite(),
            "aadharauthenticationhistory": (context) => AadharAuthenticationHistory(),
            "aadharauthenticationhistorygotosite": (context) => AadharAuthenticationHistory_GoToSite(),

            "voterservices": (context) => VoterServices(),
            "searchnameinelectroralroll": (context) => SearchNameInElectroralRoll(),
            "searchnameinelectroralrollgotosite": (context) => SearchNameInElectroralRoll_GoToSite(),
            "voteridcardstatus": (context) => VoterIDCardStatus(),
            "voteridcardstatusgotosite": (context) => VoterIDCardStatus_GoToSite(),
            "applyonlineforregofnewvoter": (context) => ApplyOnlineForRegOfNewVoter(),
            "applyonlineforregofnewvotergotosite": (context) => ApplyOnlineForRegOfNewVoter_GoToSite(),
            "applyonlineforregofoverseasvoter": (context) => ApplyOnlineForRegOfOverseasVoter(),
            "applyonlineforregofoverseasvotergotosite": (context) => VoterIDCardStatus_GoToSite(),
            "correctionofentries": (context) => CorrectionOfEntries(),
            "correctionofentriesgotosite": (context) => CorrectionOfEntries_GoToSite(),

            "couriesservices": (context) => CouriesServices(),
            "indianpostalservices": (context) => IndianPostalServices(),
            "indianpostalservicesgotosite": (context) => IndianPostalServices_GoToSite(),
            "fedexindia": (context) => FedExIndia(),
            "fedexindiagotosite": (context) => FedExIndia_GoToSite(),
            "firstfightcourierlimited": (context) => FirstFightCourierLimited(),
            "firstfightcourierlimitedgotosite": (context) => FirstFightCourierLimited_GoToSite(),

            "travelservices": (context) => TravelServices(),
            "bus": (context) => Bus(),
            "andhrapradeshbus": (context) => AndhraPradeshBus(),
            "andhrapradeshbusgotosite": (context) => AndhraPradeshBusGoToSite(),
            "arunachalpradeshbus": (context) => ArunachalPradeshBus(),
            "arunachalpradeshbusgotosite": (context) => ArunachalPradeshBus_GoToSite(),
            "train": (context) => Train(),
            "searchtrain": (context) => SearchTrain(),
            "searchtraingotosite": (context) => SearchTrain_GoToSite(),
            "booktrainticket": (context) => BookTrainTicket(),
            "booktrainticketgotosite": (context) => BookTrainTicket_GoToSite(),
            "flight": (context) => Flight(),
            "airindia": (context) => AirIndia(),
            "airindiagotosite": (context) => AirIndia_GoToSite(),
            "bookaflight": (context) => BookTrainTicket(),
            "bookaflightgotosite": (context) => BookTrainTicket_GoToSite(),

            "shoppingservices": (context) => ShoppingServices(),
            "flipkart": (context) => Flipkart(),
            "flipkartgotosite": (context) => Flipkart_GoToSite(),
            "amazon": (context) => Amazon(),
            "amazongotosite": (context) => Amazon_GoToSite(),
            "myntra": (context) => Myntra(),
            "myntragotosite": (context) => Myntra_GoToSite(),

            "socialnetworking": (context) => SocialNetworking(),
            "facebook": (context) => Facebook(),
            "facebookgotosite": (context) => Facebook_GoToSite(),
            "instragram": (context) => Instragram(),
            "instragramgotosite": (context) => InstragramGoToSite(),
            "whatsapp": (context) => Whatsapp(),
            "whatsappgotosite": (context) => Whatsapp_GoToSite(),

            "recharge": (context) => Recharge(),
            "paytm": (context) => Paytm(),
            "paytmgotosite": (context) => Paytm_GoToSite(),
            "phonepe": (context) => Phonepe(),
            "phonepegotosite": (context) => Phonepe_GoToSite(),

            "searchengine": (context) => SearchEngine(),
            "google": (context) => Google(),
            "googlegotosite": (context) => GoogleGoToSite(),
            "yahoo": (context) => Yahoo(),
            "yahoogotosite": (context) => YahooGoToSite(),

            "foodzone": (context) => FoodZone(),
            "mcdonald": (context) => Mcdonald(),
            "mcdonaldgotosite": (context) => McdonaldGoToSite(),
            "dominos": (context) => Dominos(),
            "dominosgotosite": (context) => Dominos_GoToSite(),
          },
        );
      },
    )
  );
}