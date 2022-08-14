import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/bidan/randa_kabilasa/asesmen_modal/detail_mencegah_malnutrisi_modal.dart';
import 'package:moms_care_mobile/components/bidan/randa_kabilasa/asesmen_modal/detail_mencegah_pernikahan_dini_modal.dart';
import 'package:moms_care_mobile/components/bidan/randa_kabilasa/asesmen_modal/detail_meningkatkan_lifeskill_modal.dart';
import 'package:moms_care_mobile/components/bidan/randa_kabilasa/asesmen_modal/ubah_meningkatkan_lifeskill_modal.dart';
import 'package:moms_care_mobile/components/bidan/randa_kabilasa/asesmen_modal/ubah_pernikahan_dini_modal.dart';
import 'package:moms_care_mobile/components/util/custom_button_icon.dart';

import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';
import '../../util/custom_elevated_button_icon.dart';
import '../../util/custom_radio_input.dart';
import '../deteksi_stunting/ibu_melahirkan_stunting/bidan_ubah_ibu_stunting_modal.dart';

class BidanDetailRandaKabilasaModal extends StatelessWidget {
  const BidanDetailRandaKabilasaModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: size.width * 0.9,
        height: size.height * 0.6,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                children: const <Widget>[
                  Flexible(
                    child: Text(
                      'Detail Randa Kabilasa',
                      style: TextStyle(
                          fontFamily: fontNunito,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: grey),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: const [
                  Text(
                    'Dibuat Tanggal : 22 Mei 2022',
                    style: TextStyle(
                      fontFamily: fontNunito,
                      fontSize: 14,
                      color: grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    'Divalidasi Tanggal : 22 Mei 2022',
                    style: TextStyle(
                      fontFamily: fontNunito,
                      fontSize: 14,
                      color: grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                margin: EdgeInsets.all(1),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(20),
                  dashPattern: const [2, 2],
                  color: Colors.black,
                  strokeWidth: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: <Widget>[
                      const Text(
                        '-- Info Remaja --',
                        style: TextStyle(
                            fontFamily: fontNunito,
                            fontWeight: FontWeight.bold,
                            color: grey),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/person.svg",
                            height: 25,
                          ),
                          const Text(
                            'Nama Remaja',
                            style: TextStyle(fontFamily: fontNunito),
                          ),
                          SizedBox(width: size.width * 0.03),
                          Flexible(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'MAIL',
                                    style: TextStyle(
                                        fontFamily: fontNunito,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: cardDarkGreen,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/blood.svg",
                            height: 25,
                          ),
                          SizedBox(width: size.width * 0.01),
                          const Text(
                            'Kategori HB',
                            style: TextStyle(fontFamily: fontNunito),
                          ),
                          SizedBox(width: size.width * 0.03),
                          Flexible(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'NORMAL',
                                    style: TextStyle(
                                        fontFamily: fontNunito,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: cardDarkGreen,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/ruler.svg",
                            height: 25,
                          ),
                          SizedBox(width: size.width * 0.01),
                          const Text(
                            'Lingkar Lengan Atas',
                            style: TextStyle(fontFamily: fontNunito),
                          ),
                          SizedBox(width: size.width * 0.03),
                          Flexible(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'NORMAL',
                                    style: TextStyle(
                                        fontFamily: fontNunito,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: cardDarkGreen,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/weight.svg",
                            height: 25,
                          ),
                          SizedBox(width: size.width * 0.01),
                          const Text(
                            'Indeks Massa Tubuh',
                            style: TextStyle(fontFamily: fontNunito),
                          ),
                          SizedBox(width: size.width * 0.03),
                          Flexible(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'NORMAL',
                                    style: TextStyle(
                                        fontFamily: fontNunito,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: cardDarkGreen,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/address-input.svg",
                            height: 25,
                          ),
                          SizedBox(width: size.width * 0.01),
                          const Text(
                            'Desa Kelurahan',
                            style: TextStyle(fontFamily: fontNunito),
                          ),
                          SizedBox(width: size.width * 0.03),
                          Flexible(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'BORA',
                                    style: TextStyle(
                                        fontFamily: fontNunito,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: cardDarkGreen,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/nurse.svg",
                            height: 25,
                          ),
                          SizedBox(width: size.width * 0.01),
                          const Text(
                            'Oleh Bidan',
                            style: TextStyle(fontFamily: fontNunito),
                          ),
                          SizedBox(width: size.width * 0.03),
                          Flexible(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'YUNI',
                                    style: TextStyle(
                                        fontFamily: fontNunito,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: cardDarkGreen,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                margin: EdgeInsets.all(1),
                child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    dashPattern: const [4, 4],
                    color: cardDarkGreen,
                    strokeWidth: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            '-- Asesmen --',
                            style: TextStyle(
                                fontFamily: fontNunito,
                                fontWeight: FontWeight.w700,
                                color: grey,
                                fontSize: 16),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: size.width * 0.35,
                                child: Text(
                                  'Status Validasi Asesmen Mencegah Malnutrisi',
                                  style: TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.w600,
                                      color: grey),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 18,
                                    height: 18,
                                    child: 1 == 1
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
                                      1 == 1
                                          ? "Tervalidasi"
                                          : "Belum Divalidasi",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: fontNunito,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: 1 == 1
                                              ? Colors.green
                                              : Colors.amber.withOpacity(0.8)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: size.width * 0.35,
                                child: Text(
                                  'Status Validasi Asesmen Mencegah Pernikahan Dini',
                                  style: TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.w600,
                                      color: grey),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 18,
                                    height: 18,
                                    child: 1 == 1
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
                                      1 == 1
                                          ? "Tervalidasi"
                                          : "Belum Divalidasi",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: fontNunito,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: 1 == 1
                                              ? Colors.green
                                              : Colors.amber.withOpacity(0.8)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: size.width * 0.35,
                                child: Text(
                                  'Status Validasi Asesmen Meningkatkan Life Skill',
                                  style: TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.w600,
                                      color: grey),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 18,
                                    height: 18,
                                    child: 1 == 1
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
                                      1 == 1
                                          ? "Tervalidasi"
                                          : "Belum Divalidasi",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: fontNunito,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: 1 == 1
                                              ? Colors.green
                                              : Colors.amber.withOpacity(0.8)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: size.width * 0.2,
                                child: Text(
                                  'Status Asesmen',
                                  style: TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.w600,
                                      color: grey),
                                ),
                              ),
                              Container(
                                width: 175,
                                child: Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text(
                                      'Sudah Melakukan Seluruh Asesmen',
                                      style: TextStyle(
                                        fontFamily: fontNunito,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                margin: EdgeInsets.all(1),
                child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    dashPattern: const [4, 4],
                    color: cardDarkGreen,
                    strokeWidth: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            '-- Kelola --',
                            style: TextStyle(
                                fontFamily: fontNunito,
                                fontWeight: FontWeight.w700,
                                color: grey,
                                fontSize: 16),
                          ),
                          SizedBox(height: size.height * 0.02),
                          DottedBorder(
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(10),
                            dashPattern: const [2, 2],
                            color: cardDarkGreen,
                            strokeWidth: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.2,
                                        child: Text(
                                          'Asesmen Mencegah Malnutrisi',
                                          style: TextStyle(
                                            fontFamily: fontNunito,
                                            fontWeight: FontWeight.w600,
                                            color: grey,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 155,
                                        child: Padding(
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              'Berpartisipasi Mencegah Stunting',
                                              style: TextStyle(
                                                  fontFamily: fontNunito,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomIconButton(
                                          icon: SvgPicture.asset(
                                            "assets/icons/eye.svg",
                                            color: Colors.white,
                                            height: 18,
                                          ),
                                          onTap: () {
                                            Navigator.pop(context);
                                            showDialog(
                                                context: context,
                                                builder: (_) =>
                                                    const BidanDetailMencegahMalnutrisiModal());
                                          }),
                                      SizedBox(width: size.width * 0.02),
                                      CustomIconButton(
                                        color: Colors.amber,
                                        icon: SvgPicture.asset(
                                          "assets/icons/pencil.svg",
                                          height: 18,
                                          color: Colors.white,
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                      SizedBox(width: size.width * 0.02),
                                      CustomIconButton(
                                        color: Colors.red.withOpacity(0.9),
                                        icon: SvgPicture.asset(
                                          "assets/icons/delete.svg",
                                          height: 18,
                                          color: Colors.white,
                                        ),
                                        onTap: () => 1,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          DottedBorder(
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(10),
                            dashPattern: const [2, 2],
                            color: cardDarkGreen,
                            strokeWidth: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.2,
                                        child: Text(
                                          'Asesmen Meningkatkan Life Skill',
                                          style: TextStyle(
                                            fontFamily: fontNunito,
                                            fontWeight: FontWeight.w600,
                                            color: grey,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 155,
                                        child: Padding(
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              'Berpartisipasi Mencegah Stunting',
                                              style: TextStyle(
                                                  fontFamily: fontNunito,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomIconButton(
                                          icon: SvgPicture.asset(
                                            "assets/icons/eye.svg",
                                            color: Colors.white,
                                            height: 18,
                                          ),
                                          onTap: () {
                                            Navigator.pop(context);
                                            showDialog(
                                                context: context,
                                                builder: (_) =>
                                                    const BidanDetailMeningkatkanLifeSkillModal());
                                          }),
                                      SizedBox(width: size.width * 0.02),
                                      CustomIconButton(
                                        color: Colors.amber,
                                        icon: SvgPicture.asset(
                                          "assets/icons/pencil.svg",
                                          height: 18,
                                          color: Colors.white,
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                          showDialog(
                                              context: context,
                                              builder: (_) =>
                                                  const UbahLifeSkillModal());
                                        },
                                      ),
                                      SizedBox(width: size.width * 0.02),
                                      CustomIconButton(
                                        color: Colors.red.withOpacity(0.9),
                                        icon: SvgPicture.asset(
                                          "assets/icons/delete.svg",
                                          height: 18,
                                          color: Colors.white,
                                        ),
                                        onTap: () => 1,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          DottedBorder(
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(10),
                            dashPattern: const [2, 2],
                            color: cardDarkGreen,
                            strokeWidth: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.2,
                                        child: Text(
                                          'Asesmen Mencegah Pernikahan Dini',
                                          style: TextStyle(
                                            fontFamily: fontNunito,
                                            fontWeight: FontWeight.w600,
                                            color: grey,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 155,
                                        child: Padding(
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              'Berpartisipasi Mencegah Stunting',
                                              style: TextStyle(
                                                  fontFamily: fontNunito,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomIconButton(
                                          icon: SvgPicture.asset(
                                            "assets/icons/eye.svg",
                                            color: Colors.white,
                                            height: 18,
                                          ),
                                          onTap: () {
                                            Navigator.pop(context);
                                            showDialog(
                                                context: context,
                                                builder: (_) =>
                                                    const BidanDetailPernikahanDiniModal());
                                          }),
                                      SizedBox(width: size.width * 0.02),
                                      CustomIconButton(
                                        color: Colors.amber,
                                        icon: SvgPicture.asset(
                                          "assets/icons/pencil.svg",
                                          height: 18,
                                          color: Colors.white,
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                          showDialog(
                                              context: context,
                                              builder: (_) =>
                                                  const UbahPernikahanDiniModal());
                                        },
                                      ),
                                      SizedBox(width: size.width * 0.02),
                                      CustomIconButton(
                                        color: Colors.red.withOpacity(0.9),
                                        icon: SvgPicture.asset(
                                          "assets/icons/delete.svg",
                                          height: 18,
                                          color: Colors.white,
                                        ),
                                        onTap: () => 1,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomElevatedButtonIcon(
                  label: "TUTUP",
                  icon: SvgPicture.asset(
                    "assets/icons/close.svg",
                    height: 25,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.red,
                  onPressed: () => Navigator.pop(context),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
