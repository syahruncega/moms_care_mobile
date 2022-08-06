import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';
import '../../../util/custom_elevated_button_icon.dart';

class DetailPerkembanganAnakModal extends StatelessWidget {
  const DetailPerkembanganAnakModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: size.width * 0.9,
        height: size.height * 0.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                children: const <Widget>[
                  Text(
                    'Detail Perkembangan Anak',
                    style: TextStyle(
                        fontFamily: fontNunito,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: grey),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: const [
                  Text(
                    'Dibuat Tanggal :',
                    style: TextStyle(
                      fontFamily: fontNunito,
                      fontSize: 15,
                      color: grey,
                    ),
                  ),
                  Text(
                    '1 April 2022',
                    style: TextStyle(
                      fontFamily: fontNunito,
                      fontSize: 14,
                      color: grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                dashPattern: const [2, 2],
                color: cardDarkBlue,
                strokeWidth: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: <Widget>[
                    const Text(
                      '-- Motorik Kasar --',
                      style: TextStyle(
                        fontFamily: fontNunito,
                        fontWeight: FontWeight.bold,
                        color: cardDarkBlue,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: const <Widget>[
                        Flexible(
                          child: Text(
                            'Dapat menegakkan kepala, belajar tengkurap sampai dengan duduk (pada usia 8-9 bulan), memainkan ibu jari kaki',
                            style: TextStyle(
                              fontFamily: fontNunito,
                              color: cardDarkBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                dashPattern: const [2, 2],
                color: cardDarkGreen,
                strokeWidth: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: <Widget>[
                    const Text(
                      '-- Motorik Halus --',
                      style: TextStyle(
                        fontFamily: fontNunito,
                        fontWeight: FontWeight.bold,
                        color: cardDarkGreen,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: const <Widget>[
                        Flexible(
                          child: Text(
                            'Mengoceh, sudah mengenal wajah seseorang, bisa membedakan suara, belajar makan dan mengunyah',
                            style: TextStyle(
                              fontFamily: fontNunito,
                              color: cardDarkGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                dashPattern: const [2, 2],
                color: Colors.black,
                strokeWidth: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: <Widget>[
                    const Text(
                      '-- Info Anak --',
                      style: TextStyle(
                        fontFamily: fontNunito,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/child.svg",
                          height: 25,
                        ),
                        const Text(
                          'Nama Anak',
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
                                  'FARA',
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
                          "assets/icons/gender.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Jenis Kelamin',
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
                                  'PEREMPUAN',
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
                          "assets/icons/date-input.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Tanggal Lahir',
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
                                  '1 SEPTEMBER 2022',
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
                          "assets/icons/cake.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Usia',
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
                                  '1 TAHUN 11 BULAN 4 HARI',
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
                          "assets/icons/form.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Status',
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
                                  'TERVALIDASI',
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
                          "assets/icons/date-input.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Tanggal Konfirmasi',
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
                                  '22 MEI 2022',
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
