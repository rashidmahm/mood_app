import 'package:flutter/material.dart';
import 'package:openai_ada/main.dart';
import 'package:provider/provider.dart';

import '../../model/font_model.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {
    final fontSizeModel = Provider.of<FontSizeModel>(context);
    int currentIndex = fontSizeModel.caresolSliderValue;
    //for color from index of moode 
    Color containerColor;
    if (currentIndex == 0) {
      containerColor = Colors.red;
    } else if (currentIndex == 1) {
      containerColor = Colors.amber;
    } else if (currentIndex == 2) {
      containerColor = Colors.blue;
    } else if (currentIndex == 3) {
      containerColor = Colors.green;
    } else {
      containerColor = Colors.orange;
    }
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton( icon: Icon(Icons.arrow_back,color: containerColor,size: 30,), onPressed: () { 
              Navigator.pop(context);
             },),
          ),
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                       Center(
                        child: Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 40,
                              color: containerColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: mq.height * 0.19,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: containerColor,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      'Sound',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: fontSizeModel.fontSize,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                                thickness: 4,
                                endIndent: 50,
                                indent: 50,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/bell.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      color: Colors.white,
                                    ),
                                    Image.asset(
                                      'assets/vibratingbell.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      color: Colors.white,
                                    ),
                                    Image.asset(
                                      'assets/mutebell.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: containerColor,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Font Size',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: fontSizeModel.fontSize,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                                thickness: 4,
                                endIndent: 50,
                                indent: 50,
                              ),
                              SliderTheme(
                                data: SliderThemeData(
                                  trackHeight: 15,
                                  thumbColor: Colors.blue,
                                  overlayColor: Colors.blue.withAlpha(8),
                                  valueIndicatorColor: Colors.blue,
                                  showValueIndicator: ShowValueIndicator.always,
                                ),
                                child: Slider(
                                  value: fontSizeModel.fontSize,
                                  onChanged: (newValue) {
                                    fontSizeModel.setFontSize(newValue);
                                  },
                                  min: 12,
                                  max: 22,
                                  label:  fontSizeModel.fontSize.round().toString(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.16,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: containerColor,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Themes',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:  fontSizeModel.fontSize,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                                thickness: 4,
                                endIndent: 50,
                                indent: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]))));
  }
}
