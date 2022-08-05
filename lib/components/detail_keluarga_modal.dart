import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moms_care_mobile/components/custom_elevated_button_icon.dart';
import 'package:moms_care_mobile/consts/colors.dart';
import 'package:moms_care_mobile/consts/fonts.dart';

class DetailKeluargaModal extends StatelessWidget {
  const DetailKeluargaModal({Key? key}) : super(key: key);

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
                    'Detail Keluarga',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Dibuat :',
                        style: TextStyle(
                          fontFamily: fontNunito,
                          fontSize: 15,
                          color: grey,
                        ),
                      ),
                      Text(
                        '1 Agustus 2022',
                        style: TextStyle(
                          fontFamily: fontNunito,
                          fontSize: 14,
                          color: grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const <Widget>[
                      Text(
                        'Terakhir Diperbarui :',
                        style: TextStyle(
                          fontFamily: fontNunito,
                          fontSize: 15,
                          color: grey,
                        ),
                      ),
                      Text(
                        '1 Agustus 2022',
                        style: TextStyle(
                          fontFamily: fontNunito,
                          fontSize: 14,
                          color: grey,
                        ),
                      ),
                    ],
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
                                "assets/icons/maps.svg",
                                color: Colors.white,
                                height: 20,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width * 0.01),
                      const Text(
                        'DOMISILI : ',
                        style: TextStyle(
                            fontFamily: fontNunito, color: cardTextBlue),
                      ),
                      SizedBox(width: size.width * 0.01),
                      const Flexible(
                        child: Text(
                          'BORA, SIGI BIROMARU, KABUPATEN SIGI, SULAWESI TENGAH',
                          style: TextStyle(
                              fontFamily: fontNunito, color: cardTextBlue),
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: cardBlue,
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
                      '-- Info Kepala Keluarga --',
                      style: TextStyle(
                        fontFamily: fontNunito,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/person.svg",
                          height: 25,
                        ),
                        const Text(
                          'Nama Lengkap',
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
                          "assets/icons/id-card.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'NIK',
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
                                  '7206091803080002',
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
                          "assets/icons/place-pin.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Tempat Lahir',
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
                                  'TONDO',
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
                          "assets/icons/pray.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Agama',
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
                                  'ISLAM',
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
                          "assets/icons/toga.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Pendidikan',
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
                                  'DIPLOMA IV/STRATA I',
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
                          "assets/icons/job.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Jenis Pekerjaan',
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
                                  'WIRASWASTA',
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
                          'Golongan Darah',
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
                                  'TIDAK TAHU',
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
                          "assets/icons/wedding.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Status Perkawinan',
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
                                  'KAWIN TERCATAT',
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
                          'Tanggal Perkawinan',
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
                                  '28 JANUARI 2019',
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
                          "assets/icons/family.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Status Dalam Keluarga',
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
                                  'ISTRI',
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
                          "assets/icons/flag.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Kewarganegaraan',
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
                                  'WNI',
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
                          "assets/icons/number-input.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Nomor Paspor',
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
                                  '-',
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
                          "assets/icons/number-input.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Nomor KITAP',
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
                                  '-',
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
                          "assets/icons/father.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Nama Ayah',
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
                                  'ILHAM',
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
                          "assets/icons/mother.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Nama Ibu',
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
                                  'MUJI',
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
                          'Alamat Domisili',
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
                                  'JL. R.E. MARTADINATA',
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
                          "assets/icons/place-pin.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Desa/Kelurahan Domisili',
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
                          "assets/icons/place-pin.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Kecamatan Domisili',
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
                                  'SIGI BIROMARU',
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
                          "assets/icons/place-pin.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Kabupaten/Kota Domisili',
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
                                  'KABUPATEN SIGI',
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
                          "assets/icons/place-pin.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Provinsi Domisili',
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
                                  'SULAWESI TENGAH',
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
                          "assets/icons/letter.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Surat Ket. Domisili',
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
                                  'TIDAK ADA',
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
                          "assets/icons/telephone.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Nomor HP',
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
                                  '-',
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
                          "assets/icons/id-card.svg",
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
                                  '26 APRIL 2022',
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
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/user.svg",
                          height: 25,
                        ),
                        SizedBox(width: size.width * 0.01),
                        const Text(
                          'Foto Profil',
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
                                  'TIDAK ADA',
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
