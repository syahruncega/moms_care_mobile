import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:moms_care_mobile/pages/keluarga/antenatal_care_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/deteksi_dini_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/ibu_melahirkan_stunting_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/perkiraan_melahirkan_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/stunting_anak_screen.dart';

import '../../components/custom_appBar.dart';
import '../../consts/colors.dart';
import '../../consts/fonts.dart';

class MomsCareScreen extends StatefulWidget {
  const MomsCareScreen({Key? key}) : super(key: key);

  @override
  State<MomsCareScreen> createState() => _MomsCareScreenState();
}

class _MomsCareScreenState extends State<MomsCareScreen> {
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
            appBar(),
            SizedBox(height: size.height * 0.01),
            SizedBox(
              height: 200,
              child: LottieBuilder.asset("assets/anim/moms-care.json"),
            ),
            const Text(
              'Moms Care',
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
                length: 3,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: TabBar(
                      labelPadding: EdgeInsets.zero,
                      unselectedLabelColor: Colors.black,
                      onTap: (index) {
                        setState(() {
                          tabIndex = index;
                        });
                      },
                      tabs: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/icons/pregnant.svg",
                              height: 25,
                              color:
                                  tabIndex == 0 ? Colors.white : Colors.black,
                            ),
                            const Flexible(
                              child: Center(
                                child: Text(
                                  'Perkiraan Melahirkan',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/icons/find.svg",
                              height: 25,
                              color:
                                  tabIndex != 1 ? Colors.black : Colors.white,
                            ),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  'Deteksi Dini',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/icons/woman.svg",
                              height: 25,
                              color:
                                  tabIndex != 2 ? Colors.black : Colors.white,
                            ),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text('ANC',
                                    style: TextStyle(
                                        fontFamily: fontNunito, fontSize: 14),
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
            (tabIndex == 0)
                ? const PerkiraanMelahirkanScreen()
                : (tabIndex == 1)
                    ? const DeteksiDiniScreen()
                    : const AntenatalCareScreen()
          ],
        ),
      ),
    );
  }
}
