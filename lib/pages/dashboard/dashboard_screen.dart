import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/consts/fonts.dart';
import '../../components/custom_appBar.dart';
import '../../components/dashboard/card_dashboard.dart';
import '../../consts/colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            appBar(),
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 35, left: 18),
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: fontNunito,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    CardDashboard(
                      cardBackgroundColor: cardGreen,
                      cardTextColor: cardTextGreen,
                      cardBtnColor: cardDarkGreen,
                      cardTitle: 'ANGGOTA KELUARGA',
                      cardSubTitle:
                          'Untuk melihat dan menambahkan anggota keluarga baru',
                      img: SvgPicture.asset("assets/images/family.svg"),
                      button: <Widget>[
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(cardDarkGreen),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Anggota Keluarga'),
                        )
                      ],
                    ),
                    CardDashboard(
                      cardBackgroundColor: cardBlue,
                      cardTextColor: cardTextBlue,
                      cardBtnColor: cardDarkBlue,
                      cardTitle: 'DETEKSI STUNTING',
                      cardSubTitle:
                          'Peruntukan untuk Ibu yang akan melahirkan dan BALITA',
                      img: SvgPicture.asset(
                          "assets/images/deteksi_stunting.svg"),
                      button: <Widget>[
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(cardDarkBlue),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Stunting Anak'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(cardDarkBlue),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Ibu Melahirkan Stunting'),
                        )
                      ],
                    ),
                    CardDashboard(
                      cardBackgroundColor: cardGreenVariant,
                      cardTextColor: cardTextGreenVariant,
                      cardBtnColor: cardDarkGreenVariant,
                      cardTitle: 'MOMS CARE',
                      cardSubTitle: 'Peruntukan untuk Ibu yang akan melahirkan',
                      img: SvgPicture.asset("assets/images/moms_care.svg"),
                      button: <Widget>[
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                cardDarkGreenVariant),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Perkiraan Lahir'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                cardDarkGreenVariant),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Deteksi Dini'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                cardDarkGreenVariant),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('ANC'),
                        )
                      ],
                    ),
                    CardDashboard(
                      cardBackgroundColor: cardRed,
                      cardTextColor: cardTextRed,
                      cardBtnColor: cardDarkRed,
                      cardTitle: 'TUMBUH KEMBANG',
                      cardSubTitle:
                          'Diperuntukan untuk BALITA & anak yang berusia Remaja',
                      img: SvgPicture.asset("assets/images/tumbuh_kembang.svg"),
                      button: <Widget>[
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(cardDarkRed),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Pertumbuhan'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(cardDarkRed),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Perkembangan'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
