// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_colors.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  void openHome() {
    Navigator.of(context).pushNamed('/home');
  }

  bool valueFake() {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OutlinedButton(
                  onPressed: openHome,
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      width: 1,
                      color: AppColors.mainLightPink,
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    fixedSize: const Size(67, 47),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(21),
                      ),
                    ),
                    elevation: 0,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.mainLightPinkunselected,
                    size: 34,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    shape: BoxShape.rectangle,
                    color: AppColors.mainLightPink,
                  ),
                  padding: EdgeInsets.fromLTRB(35, 20, 35, 35),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rest zone',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.mainLightPinkunselected,
                      ),
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sleep goal',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(16, 2, 16, 2),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                shape: BoxShape.rectangle,
                                color: Color.fromRGBO(172, 143, 143, 1),
                              ),
                              child: Text(
                                '8h 30min',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 0.6,
                        color: AppColors.mainLightPinkunselected,
                      ),
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Wake-Up Range',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(16, 2, 16, 2),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                shape: BoxShape.rectangle,
                                color: Color.fromRGBO(172, 143, 143, 1),
                              ),
                              child: Text(
                                '30min',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 0.6,
                        color: AppColors.mainLightPinkunselected,
                      ),
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Music',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Text(
                              'Inspiration',
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 0.6,
                        color: AppColors.mainLightPinkunselected,
                      ),
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Vibration',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Container(
                              height: 32,
                              width: 52,
                              padding: EdgeInsets.fromLTRB(20, 3, 3, 3),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                shape: BoxShape.rectangle,
                                color: Color.fromRGBO(172, 143, 143, 1),
                              ),
                              child: Container(
                                height: 4,
                                width: 4,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.mainLightPinkunselected,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Wake-Up Range - time when your alarm\nwill call every 5 minutes',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    shape: BoxShape.rectangle,
                    color: AppColors.mainLightPink,
                  ),
                  padding: EdgeInsets.fromLTRB(35, 20, 35, 35),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Supply zone',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.mainLightPinkunselected,
                      ),
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Water intake',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(16, 2, 16, 2),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                shape: BoxShape.rectangle,
                                color: Color.fromRGBO(172, 143, 143, 1),
                              ),
                              child: Text(
                                '2000 ml',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColors.mainLightPinkunselected,
                      ),
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Your RDI',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w100,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(16, 2, 16, 2),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                shape: BoxShape.rectangle,
                                color: Color.fromRGBO(172, 143, 143, 1),
                              ),
                              child: Text(
                                '2000 kcal',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
