import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:moms_care_mobile/pages/keluarga/deteksi_stunting/ibu_melahirkan_stunting/ibu_melahirkan_stunting_screen.dart';
import 'package:moms_care_mobile/pages/keluarga/deteksi_stunting/stunting_anak/stunting_anak_screen.dart';

import '../../../components/util/custom_appbar.dart';
import '../../../consts/colors.dart';
import '../../../consts/fonts.dart';
import 'ibu_melahirkan_stunting/bidan_ibu_stunting_screen.dart';
import 'stunting_anak/bidan_stunting_anak_screen.dart';

class BidanDeteksiStuntingScreen extends StatefulWidget {
  const BidanDeteksiStuntingScreen({Key? key}) : super(key: key);

  @override
  State<BidanDeteksiStuntingScreen> createState() =>
      _BidanDeteksiStuntingScreenState();
}

class _BidanDeteksiStuntingScreenState
    extends State<BidanDeteksiStuntingScreen> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundScaffold,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            appbar(),
            SizedBox(height: size.height * 0.03),
            // SizedBox(
            //   height: 200,
            //   child: LottieBuilder.asset("assets/anim/searching.json"),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: const Text(
                'Deteksi Stunting',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: fontNunito,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Icon(Icons.circle,
                              color: cardTextGreenVariant, size: 7),
                        ),
                        SizedBox(width: size.width * 0.01),
                        Flexible(
                          child: Text(
                            'Data yang ditampilkan hanyalah data yang berasal dari lokasi tugas anda sekarang dan data yang telah anda validasi baik dilokasi tugas anda yang sekarang maupun dilokasi tugas sebelumnya.',
                            style: TextStyle(
                                fontFamily: fontNunito,
                                color: cardTextGreenVariant),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Icon(Icons.circle,
                              color: cardTextGreenVariant, size: 7),
                        ),
                        SizedBox(width: size.width * 0.01),
                        Flexible(
                          child: Text(
                            'Kolom',
                            style: TextStyle(
                                fontFamily: fontNunito,
                                color: cardTextGreenVariant),
                          ),
                        ),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          'Aksi:',
                          style: TextStyle(
                              fontFamily: fontNunito,
                              color: cardTextGreenVariant,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Icon(Icons.circle_outlined,
                                color: cardTextGreenVariant, size: 7),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Flexible(
                            child: Text(
                              'Dapat melihat',
                              style: TextStyle(
                                  fontFamily: fontNunito,
                                  color: cardTextGreenVariant),
                            ),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Icon(
                            Icons.remove_red_eye,
                            color: cardTextGreenVariant,
                            size: 18,
                          ),
                          SizedBox(width: size.width * 0.01),
                          Text(
                            'detail',
                            style: TextStyle(
                                fontFamily: fontNunito,
                                color: cardTextGreenVariant,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Text(
                            'data',
                            style: TextStyle(
                                fontFamily: fontNunito,
                                color: cardTextGreenVariant),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Icon(Icons.circle_outlined,
                                color: cardTextGreenVariant, size: 7),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Flexible(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    fontFamily: fontNunito,
                                    color: cardTextGreenVariant),
                                children: [
                                  TextSpan(text: 'Hanya dapat '),
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      child: Icon(
                                        Icons.delete,
                                        size: 18,
                                        color: cardTextGreenVariant,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'menghapus ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text: 'dan',
                                  ),
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      child: Icon(
                                        Icons.edit_outlined,
                                        size: 18,
                                        color: cardTextGreenVariant,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'mengubah ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text: 'data yang telah anda validasi.',
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Icon(Icons.circle_outlined,
                                color: cardTextGreenVariant, size: 7),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Flexible(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    fontFamily: fontNunito,
                                    color: cardTextGreenVariant),
                                children: [
                                  TextSpan(text: 'Tombol '),
                                  WidgetSpan(
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: SvgPicture.asset(
                                          "assets/icons/check.svg",
                                          height: 18,
                                          color: cardTextGreenVariant,
                                        )),
                                  ),
                                  TextSpan(
                                      text: 'konfirmasi ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text:
                                        'hanya akan muncul ketika ada data baru dilokasi tugas anda.',
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: cardGreenVariant,
                ),
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
                ? const BidanStuntingAnakScreen()
                : const BidanIbuStuntingScreen()
          ],
        ),
      ),
    );
  }
}
