import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/consts/fonts.dart';

import '../../consts/colors.dart';
import '../../consts/hex_color.dart';

class AntenatalCareCard extends StatelessWidget {
  final String dateValidated;
  final String nama;
  final String umur;
  final int pemeriksaan;
  final int kehamilan;
  final String badan;
  final String tekananDarah;
  final String lenganAtas;
  final String hemoglobinDarah;
  final String obatTambahDarah;
  final String bidan;
  final bool isValidated;
  final Function()? onTap;

  const AntenatalCareCard(
      {required this.dateValidated,
      required this.nama,
      required this.umur,
      required this.pemeriksaan,
      required this.kehamilan,
      required this.badan,
      required this.tekananDarah,
      required this.lenganAtas,
      required this.hemoglobinDarah,
      required this.obatTambahDarah,
      required this.bidan,
      required this.isValidated,
      this.onTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 17, right: 17, top: 16, bottom: 18),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
                topRight: Radius.circular(68.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: grey.withOpacity(0.2),
                  offset: const Offset(1.1, 1.1),
                  blurRadius: 10.0),
            ],
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 4),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 70,
                                  width: 2,
                                  decoration: BoxDecoration(
                                    color: HexColor('#87A0E5').withOpacity(0.5),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(4.0)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 2),
                                        child: Text(
                                          dateValidated,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: fontNunito,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            letterSpacing: -0.1,
                                            color: grey.withOpacity(0.5),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 18,
                                            height: 24,
                                            child: SvgPicture.asset(
                                                "assets/icons/pregnant.svg"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 4,
                                            ),
                                            child: SizedBox(
                                              width: size.width * 0.3,
                                              child: Text(
                                                nama,
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                  fontFamily: fontNunito,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                  color: textDarker,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 18,
                                            height: 24,
                                            child: SvgPicture.asset(
                                                "assets/icons/date-input.svg"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 4,
                                            ),
                                            child: SizedBox(
                                              width: size.width * 0.3,
                                              child: Text(
                                                umur,
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                  fontFamily: fontNunito,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: textDarker,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 120,
                                  width: 2,
                                  decoration: BoxDecoration(
                                    color: HexColor('#F56E98').withOpacity(0.5),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(4.0)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 25,
                                            height: 25,
                                            child: SvgPicture.asset(
                                                "assets/icons/pregnant.svg"),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text(
                                              "Pemeriksaan Ke : $pemeriksaan",
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontFamily: fontNunito,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                color: textDarker,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: size.height * 0.01),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 25,
                                            height: 25,
                                            child: SvgPicture.asset(
                                                "assets/icons/pregnant.svg"),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text(
                                              "kehamilan Ke : $kehamilan",
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontFamily: fontNunito,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                color: textDarker,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: size.height * 0.01),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 25,
                                            height: 25,
                                            child: SvgPicture.asset(
                                                "assets/icons/nurse.svg"),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text(
                                              bidan,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontFamily: fontNunito,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: textDarker,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: size.height * 0.01),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 18,
                                            height: 18,
                                            child: isValidated
                                                ? SvgPicture.asset(
                                                    "assets/icons/check-mark.svg")
                                                : SvgPicture.asset(
                                                    "assets/icons/info.svg"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 4,
                                            ),
                                            child: Text(
                                              isValidated
                                                  ? "Tervalidasi"
                                                  : "Belum Divalidasi",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: fontNunito,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: isValidated
                                                      ? Colors.green
                                                      : Colors.amber
                                                          .withOpacity(0.8)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Center(
                          child: Image.asset(
                        "assets/images/anc.jpg",
                        width: 120,
                      )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 8, bottom: 8),
                child: Container(
                  height: 2,
                  decoration: const BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 8, bottom: 16),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              const Text(
                                "Badan :",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              SizedBox(width: size.width * 0.01),
                              Container(
                                decoration: BoxDecoration(
                                    color: colorPrimary,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    badan,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      letterSpacing: -0.2,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.003),
                          Row(
                            children: [
                              const Text(
                                "Tekanan Darah :",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              SizedBox(width: size.width * 0.01),
                              Container(
                                decoration: BoxDecoration(
                                    color: colorPrimary,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    tekananDarah,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      letterSpacing: -0.2,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.003),
                          Row(
                            children: [
                              const Text(
                                "Lengan Atas :",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              SizedBox(width: size.width * 0.01),
                              Container(
                                decoration: BoxDecoration(
                                    color: colorPrimary,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    lenganAtas,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      letterSpacing: -0.2,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.003),
                          Row(
                            children: [
                              const Text(
                                "Hemoglobin Darah :",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              SizedBox(width: size.width * 0.01),
                              Container(
                                decoration: BoxDecoration(
                                    color: colorPrimary,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    hemoglobinDarah,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      letterSpacing: -0.2,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.003),
                          Row(
                            children: [
                              const Text(
                                "Minum 90 Tablet Tambah Darah :",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              SizedBox(width: size.width * 0.01),
                              Container(
                                decoration: BoxDecoration(
                                    color: colorPrimary,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    obatTambahDarah,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      letterSpacing: -0.2,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
