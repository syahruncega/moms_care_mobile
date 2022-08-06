import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:moms_care_mobile/pages/keluarga/deteksi_stunting/ibu_melahirkan_stunting/ibu_melahirkan_stunting_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/deteksi_stunting/stunting_anak/stunting_anak_screen.dart';

import '../../../components/util/custom_appbar.dart';
import '../../../consts/colors.dart';
import '../../../consts/fonts.dart';

class DeteksiStuntingScreen extends StatefulWidget {
  const DeteksiStuntingScreen({Key? key}) : super(key: key);

  @override
  State<DeteksiStuntingScreen> createState() => _DeteksiStuntingScreenState();
}

class _DeteksiStuntingScreenState extends State<DeteksiStuntingScreen> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundScaffold,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            appbar(),
            SizedBox(height: size.height * 0.01),
            SizedBox(
              height: 200,
              child: LottieBuilder.asset("assets/anim/searching.json"),
            ),
            const Text(
              'Deteksi Stunting',
              style: TextStyle(
                fontSize: 22,
                fontFamily: fontNunito,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: DefaultTabController(
                length: 2,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: TabBar(
                      unselectedLabelColor: Colors.black,
                      onTap: (index) {
                        setState(() {
                          tabIndex = index;
                        });
                      },
                      tabs: <Widget>[
                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/icons/child.svg",
                              height: 25,
                              color:
                                  tabIndex == 0 ? Colors.white : Colors.black,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Stunting Anak',
                                style: TextStyle(
                                    fontFamily: fontNunito, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/icons/woman.svg",
                              height: 25,
                              color:
                                  tabIndex == 1 ? Colors.white : Colors.black,
                            ),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text('Ibu Melahirkan Stunting',
                                    style: TextStyle(
                                        fontFamily: fontNunito, fontSize: 15),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          ],
                        ),
                      ],
                      indicator: BoxDecoration(
                        color: colorPrimary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            tabIndex == 0
                ? const StuntingAnakScreen()
                : const IbuMelahirkanStuntingScreen()
          ],
        ),
      ),
    );
  }
}
