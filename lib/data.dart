//import 'package:cloud_firestore/cloud_firestore.dart';

class SessionData {
  String reportId;
  String phy1, phy2, phy3;
  String psy1, psy2, psy3, psy4;
  String pat1,
      pat2,
      pat3,
      pat4,
      pat5,
      pat6,
      pat7,
      pat8,
      pat9,
      pat10,
      pat11,
      pat12;
  bool done;
  bool pone1,
      pone2,
      pone3,
      pone4,
      pone5,
      pone6,
      pone7,
      pone8,
      pone9,
      pone10,
      pone11,
      pone12,
      pone13,
      pone14,
      pone15,
      pone16,
      pone17,
      pone18;
  bool ptwo1,
      ptwo2,
      ptwo3,
      ptwo4,
      ptwo5,
      ptwo6,
      ptwo7,
      ptwo8,
      ptwo9,
      ptwo10,
      ptwo11,
      ptwo12,
      ptwo13;
  bool pthree1,
      pthree2,
      pthree3,
      pthree4,
      pthree5,
      pthree6,
      pthree7,
      pthree8,
      pthree9,
      pthree10,
      pthree11,
      pthree12,
      pthree13,
      pthree14,
      pthree15,
      pthree16,
      pthree17;
  bool pfour1,
      pfour2,
      pfour3,
      pfour4,
      pfour5,
      pfour6,
      pfour7,
      pfour8,
      pfour9,
      pfour10;
  bool pfive1, pfive2, pfive3, pfive4, pfive5, pfive6;
  bool psix1, psix2, psix3, psix4;
  int check = 0;

  void toData() {
    print('*************************************************************');
    print('*****************************1*******************************');
    print('*************************************************************');
    // print('Name     :' + name);
    // print('Email    :' + email);
    // print('NfcID    :' + nfcID);
    // print('Has phone?    :' + hasPhone.toString());
    // print('Phone number    :' + phoneNo);
    print('*************************************************************');
    print('*****************************1*******************************');
    print('*************************************************************');
  }
}

SessionData globalSessionData;

void clearSessionData() {
  globalSessionData = new SessionData();
}
