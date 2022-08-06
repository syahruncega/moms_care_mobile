import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';
import '../../../util/custom_elevated_button_icon.dart';
import '../../../util/custom_radio_input.dart';

class DetailIbuMelahirkanStuntingModal extends StatelessWidget {
  const DetailIbuMelahirkanStuntingModal({Key? key}) : super(key: key);

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
                  Flexible(
                    child: Text(
                      'Hasil Deteksi Ibu Melahirkan Stunting',
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
                    '22 Mei 2022',
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
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SvgPicture.asset(
                                "assets/icons/happy.svg",
                                color: Colors.white,
                                height: 20,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorPrimary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width * 0.02),
                      const Flexible(
                        flex: 2,
                        child: Text(
                          'Tidak Berisiko Melahirkan Stunting',
                          style: TextStyle(
                              fontFamily: fontNunito,
                              color: cardTextGreenVariant),
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: colorSecondary.withOpacity(0.4),
                ),
              ),
              SizedBox(height: size.height * 0.01),
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
                      '-- Info Ibu --',
                      style: TextStyle(
                        fontFamily: fontNunito,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/woman.svg",
                          height: 25,
                        ),
                        const Text(
                          'Nama',
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
                                  'RIA',
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
                                  '1 JANUARI 1996',
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
                                  '26 TAHUN 7 BULAN 4 HARI',
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
                          "assets/icons/date-input.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Tanggal Diperiksa/validasi',
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
              SizedBox(height: size.height * 0.02),
              Row(
                children: const [
                  Text(
                    'Pertanyaan',
                    style: TextStyle(
                      fontFamily: fontNunito,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Column(
                children: [
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [2, 2],
                    color: grey.withOpacity(0.5),
                    strokeWidth: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomRadioInput(
                        title:
                            "1. Umur ibu kurang dari 20 tahun dan lebih dari 35 tahun ?",
                        option: [
                          Flexible(
                            child: RadioListTile(
                              title: const Text(
                                'Ya',
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              value: "Ya",
                              groupValue: "Ya",
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              activeColor: cardDarkGreen,
                              onChanged: (value) => value,
                            ),
                          ),
                          Flexible(
                            child: RadioListTile(
                                title: const Text(
                                  'Tidak',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                value: "Tidak",
                                groupValue: "",
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                activeColor: cardDarkGreen,
                                onChanged: (value) => value),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [2, 2],
                    color: grey.withOpacity(0.5),
                    strokeWidth: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomRadioInput(
                        title: "2. Tinggi badan kurang dari 145 cm ?",
                        option: [
                          Flexible(
                            child: RadioListTile(
                              title: const Text(
                                'Ya',
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              value: "Ya",
                              groupValue: "Ya",
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              activeColor: cardDarkGreen,
                              onChanged: (value) => value,
                            ),
                          ),
                          Flexible(
                            child: RadioListTile(
                                title: const Text(
                                  'Tidak',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                value: "Tidak",
                                groupValue: "",
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                activeColor: cardDarkGreen,
                                onChanged: (value) => value),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [2, 2],
                    color: grey.withOpacity(0.5),
                    strokeWidth: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomRadioInput(
                        title:
                            "3. Ukuran lingkar lengan atas kurang dari 23.5 cm ?",
                        option: [
                          Flexible(
                            child: RadioListTile(
                              title: const Text(
                                'Ya',
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              value: "Ya",
                              groupValue: "Ya",
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              activeColor: cardDarkGreen,
                              onChanged: (value) => value,
                            ),
                          ),
                          Flexible(
                            child: RadioListTile(
                                title: const Text(
                                  'Tidak',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                value: "Tidak",
                                groupValue: "",
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                activeColor: cardDarkGreen,
                                onChanged: (value) => value),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [2, 2],
                    color: grey.withOpacity(0.5),
                    strokeWidth: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomRadioInput(
                        title: "4. Kadar Hb kurang dari 11 Mg/dl ?",
                        option: [
                          Flexible(
                            child: RadioListTile(
                              title: const Text(
                                'Ya',
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              value: "Ya",
                              groupValue: "Ya",
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              activeColor: cardDarkGreen,
                              onChanged: (value) => value,
                            ),
                          ),
                          Flexible(
                            child: RadioListTile(
                                title: const Text(
                                  'Tidak',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                value: "Tidak",
                                groupValue: "",
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                activeColor: cardDarkGreen,
                                onChanged: (value) => value),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [2, 2],
                    color: grey.withOpacity(0.5),
                    strokeWidth: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomRadioInput(
                        title:
                            "5. Mengkonsumsi kurang dari 90 butir table Fe selama kehamilan ?",
                        option: [
                          Flexible(
                            child: RadioListTile(
                              title: const Text(
                                'Ya',
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              value: "Ya",
                              groupValue: "Ya",
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              activeColor: cardDarkGreen,
                              onChanged: (value) => value,
                            ),
                          ),
                          Flexible(
                            child: RadioListTile(
                                title: const Text(
                                  'Tidak',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                value: "Tidak",
                                groupValue: "",
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                activeColor: cardDarkGreen,
                                onChanged: (value) => value),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [2, 2],
                    color: grey.withOpacity(0.5),
                    strokeWidth: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomRadioInput(
                        title:
                            "6. Jarak kehamilan anak kurang dari 2 tahun atau lebih dari sama dengan 10 tahun ?",
                        option: [
                          Flexible(
                            child: RadioListTile(
                              title: const Text(
                                'Ya',
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              value: "Ya",
                              groupValue: "Ya",
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              activeColor: cardDarkGreen,
                              onChanged: (value) => value,
                            ),
                          ),
                          Flexible(
                            child: RadioListTile(
                                title: const Text(
                                  'Tidak',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                value: "Tidak",
                                groupValue: "",
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                activeColor: cardDarkGreen,
                                onChanged: (value) => value),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [2, 2],
                    color: grey.withOpacity(0.5),
                    strokeWidth: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomRadioInput(
                        title: "7. Paritas lebih sama dengan 4 orang ?",
                        option: [
                          Flexible(
                            child: RadioListTile(
                              title: const Text(
                                'Ya',
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              value: "Ya",
                              groupValue: "Ya",
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              activeColor: cardDarkGreen,
                              onChanged: (value) => value,
                            ),
                          ),
                          Flexible(
                            child: RadioListTile(
                                title: const Text(
                                  'Tidak',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                value: "Tidak",
                                groupValue: "",
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                activeColor: cardDarkGreen,
                                onChanged: (value) => value),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [2, 2],
                    color: grey.withOpacity(0.5),
                    strokeWidth: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomRadioInput(
                        title:
                            "8. Tekanan darah ibu sama dengan 140/149 mmHg ?",
                        option: [
                          Flexible(
                            child: RadioListTile(
                              title: const Text(
                                'Ya',
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              value: "Ya",
                              groupValue: "Ya",
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              activeColor: cardDarkGreen,
                              onChanged: (value) => value,
                            ),
                          ),
                          Flexible(
                            child: RadioListTile(
                                title: const Text(
                                  'Tidak',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                value: "Tidak",
                                groupValue: "",
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                activeColor: cardDarkGreen,
                                onChanged: (value) => value),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [2, 2],
                    color: grey.withOpacity(0.5),
                    strokeWidth: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomRadioInput(
                        title: "9. Jarak kelahiran kurang dari 2 tahun ?",
                        option: [
                          Flexible(
                            child: RadioListTile(
                              title: const Text(
                                'Ya',
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              value: "Ya",
                              groupValue: "Ya",
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              activeColor: cardDarkGreen,
                              onChanged: (value) => value,
                            ),
                          ),
                          Flexible(
                            child: RadioListTile(
                                title: const Text(
                                  'Tidak',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                value: "Tidak",
                                groupValue: "",
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                activeColor: cardDarkGreen,
                                onChanged: (value) => value),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [2, 2],
                    color: grey.withOpacity(0.5),
                    strokeWidth: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomRadioInput(
                        title:
                            "10. Memiliki penyakit DM, Hipertensi, Asma, Malaria, TBC dan PMS ?",
                        option: [
                          Flexible(
                            child: RadioListTile(
                              title: const Text(
                                'Ya',
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              value: "Ya",
                              groupValue: "Ya",
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              activeColor: cardDarkGreen,
                              onChanged: (value) => value,
                            ),
                          ),
                          Flexible(
                            child: RadioListTile(
                                title: const Text(
                                  'Tidak',
                                  style: TextStyle(
                                    fontFamily: fontNunito,
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                value: "Tidak",
                                groupValue: "",
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                activeColor: cardDarkGreen,
                                onChanged: (value) => value),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
