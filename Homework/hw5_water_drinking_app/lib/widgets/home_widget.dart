// ignore_for_file: prefer_final_fields, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw5_water_drinking_app/app_colors.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  BuildContext getContext(BuildContext context) {
    return context;
  }

  int _selectedTab = 0;
  int waterFilled = 0;
  int addedWater = 0;
  final totalWater = 2000;
  int timerCountdown = 540;

  void addWater(int a) {
    setState(() {
      addedWater = a;
    });
  }

  void confirmAddingWater() {
    setState(() {
      waterFilled += addedWater;
    });
  }

  void clearWater() {
    setState(() {
      waterFilled = 0;
    });
  }

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  String nullToZero(String? string) {
    if (string == null || string == '') {
      string = '0';
    }
    return string;
  }

  void openProfile() {
    Navigator.of(context).pushNamed('/profile');
  }

  late TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  void submit() {
    Navigator.of(context).pop(controller.text);

    controller.clear();
  }

  Future<String?> openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: TextField(
            onSubmitted: (_) => submit,
            controller: controller,
            autofocus: true,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              hintText: '300',
              hintStyle: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 191),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: submit,
              child: Text(
                'Подтвердить',
                style: GoogleFonts.montserrat(),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          highlightElevation: 0,
          backgroundColor: AppColors.mainLightPink,
          child: Icon(
            Icons.add,
            size: 35,
            color: AppColors.mainLightPinkunselected,
          ),
          onPressed: () {
            addedWater = 0;
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(28),
                ),
              ),
              isDismissible: true,
              context: context,
              builder: (BuildContext context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            addWater(100);
                          },
                          child: Text('100 ml'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            addWater(150);
                          },
                          child: Text('150 ml'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            addWater(200);
                          },
                          child: Text('200 ml'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            addWater(250);
                          },
                          child: Text('250 ml'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            addWater(300);
                          },
                          child: Text('300 ml'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            addWater(350);
                          },
                          child: Text('350 ml'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            addWater(500);
                          },
                          child: Text('500 ml'),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            String? watering = await openDialog();
                            setState(() {
                              addedWater = int.parse(nullToZero(watering));
                            });
                          },
                          child: Text(
                            'Own volume',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue.shade100,
                            elevation: 0,
                          ),
                          onPressed: () {
                            clearWater();
                          },
                          child: Text('Clear'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.mainLightPink,
                              fixedSize: Size(300, 60)),
                          onPressed: () {
                            //Confirm adding selected volume
                            confirmAddingWater();
                          },
                          child: Text('Add'),
                        )
                      ],
                    ),
                  ],
                );
              },
            );
          },
        ),
        body: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: openProfile,
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
                        Icons.person,
                        color: AppColors.mainLightPinkunselected,
                        size: 34,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                        child: Text(
                          '$waterFilled',
                          style: GoogleFonts.montserrat(
                            fontSize: 70,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 30,
                              child: Text(
                                '/$totalWater',
                                style: GoogleFonts.montserrat(
                                  fontSize: 30,
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                  color: Color.fromRGBO(118, 98, 98, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Careby',
                      style: GoogleFonts.montserrat(
                        fontSize: 25,
                      ),
                    ),
                    OutlinedButton(
                      onPressed: openProfile,
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
                        Icons.person,
                        color: AppColors.mainLightPinkunselected,
                        size: 34,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'ТУТ ТЕКСТИК.',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.5,
                            fontSize: 25,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 170,
                        ),
                        Text(
                          'ТУТ ТОЖЕ',
                          style: GoogleFonts.montserrat(
                            fontStyle: FontStyle.italic,
                            letterSpacing: 0.5,
                            fontSize: 15,
                            color: Color.fromRGBO(0, 0, 0, 224),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
      SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: AppColors.mainLightPinkunselected,
                    size: 34,
                  ),
                  OutlinedButton(
                    onPressed: openProfile,
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
                      Icons.person,
                      color: AppColors.mainLightPinkunselected,
                      size: 34,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 16,
                        width: 90,
                        child: Text(
                          'set an alarm',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w100,
                            fontStyle: FontStyle.italic,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                    ],
                  ),
                  Container(
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      shape: BoxShape.rectangle,
                      color: AppColors.mainLightPink,
                    ),
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        '9:00',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w100,
                          color: AppColors.mainLightPinkunselected,
                          letterSpacing: 1.5,
                          fontStyle: FontStyle.italic,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'start sleeping',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.italic,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Careby',
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: openProfile,
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
                      Icons.person,
                      color: AppColors.mainLightPinkunselected,
                      size: 34,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'work in progress',
                    style: GoogleFonts.montserrat(
                      fontStyle: FontStyle.italic,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];

    return Scaffold(
      body: Scaffold(
        body: widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.water_drop),
            label: 'Aqua balance',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.mainLightPinkunselected,
            icon: Icon(Icons.format_quote),
            label: 'Quote',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.mainLightPinkunselected,
            icon: Icon(Icons.bedtime),
            label: 'Rest',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.mainLightPinkunselected,
            icon: Icon(Icons.restaurant),
            label: 'Supply',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
