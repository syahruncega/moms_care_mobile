import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/util/custom_autocompleted_textfield.dart';
import 'package:moms_care_mobile/components/util/custom_radio_input.dart';
import 'package:moms_care_mobile/components/util/custom_text_field.dart';

import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';
import '../../util/custom_elevated_button_icon.dart';

class BidanTambahRandaKabilasaModal extends StatelessWidget {
  const BidanTambahRandaKabilasaModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: size.width * 0.9,
        height: size.height * 0.8,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'Tambah Randa Kabilasa',
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
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                dashPattern: const [2, 2],
                color: cardDarkGreen,
                strokeWidth: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(children: <Widget>[
                    CustomAutocompletedTextField(
                      title: 'Nama Kepala Keluarga / Nomor KK',
                      hintText: '- Pilih salah satu -',
                      controller: TextEditingController(),
                      isRequired: true,
                      items: const [
                        {'label': 'Dummy Data', 'value': 'dummy-data'}
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Nama Anak (Tanggal Lahir)',
                      hintText: '- Pilih salah satu -',
                      controller: TextEditingController(),
                      isRequired: true,
                      items: const [
                        {'label': 'Dummy Data', 'value': 'dummy-data'}
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Lingkar Lengan Atas",
                      hintText: "Cth. 65",
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/number-input.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Tinggi Badan(Cm)",
                      hintText: "Cth. 165",
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/number-input.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Berat Badan(Kg)",
                      hintText: "Cth. 65",
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/number-input.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      children: const [
                        Text(
                          'Hemoglobin',
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
                                  "1. Apakah Beberapa Waktu Terakhir Anda Sering Mengalami Sakit Kepala ?",
                              option: [
                                Flexible(
                                  child: RadioListTile(
                                    title: const Text(
                                      'Ya',
                                      style: TextStyle(
                                        fontFamily: fontNunito,
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 0),
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
                                          const EdgeInsets.symmetric(
                                              horizontal: 0),
                                      value: "Tidak",
                                      groupValue: "",
                                      visualDensity: const VisualDensity(
                                        horizontal:
                                            VisualDensity.minimumDensity,
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
                                  "2. Apakah Beberapa Waktu Terakhir Anda Susah Berkonsentrasi ?",
                              option: [
                                Flexible(
                                  child: RadioListTile(
                                    title: const Text(
                                      'Ya',
                                      style: TextStyle(
                                        fontFamily: fontNunito,
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 0),
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
                                          const EdgeInsets.symmetric(
                                              horizontal: 0),
                                      value: "Tidak",
                                      groupValue: "",
                                      visualDensity: const VisualDensity(
                                        horizontal:
                                            VisualDensity.minimumDensity,
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
                                  "3. Apakah Beberapa Waktu Terakhir Detak Jantung Anda Terasa Cepat ?",
                              option: [
                                Flexible(
                                  child: RadioListTile(
                                    title: const Text(
                                      'Ya',
                                      style: TextStyle(
                                        fontFamily: fontNunito,
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 0),
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
                                          const EdgeInsets.symmetric(
                                              horizontal: 0),
                                      value: "Tidak",
                                      groupValue: "",
                                      visualDensity: const VisualDensity(
                                        horizontal:
                                            VisualDensity.minimumDensity,
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
                                  "4. Apakah Beberapa Waktu Terakhir Anda Merasa Sesak Napas ?",
                              option: [
                                Flexible(
                                  child: RadioListTile(
                                    title: const Text(
                                      'Ya',
                                      style: TextStyle(
                                        fontFamily: fontNunito,
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 0),
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
                                          const EdgeInsets.symmetric(
                                              horizontal: 0),
                                      value: "Tidak",
                                      groupValue: "",
                                      visualDensity: const VisualDensity(
                                        horizontal:
                                            VisualDensity.minimumDensity,
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
                                  "5. Apakah Beberapa Waktu Terakhir Tangan Atau Kaki Anda Bengkak ?",
                              option: [
                                Flexible(
                                  child: RadioListTile(
                                    title: const Text(
                                      'Ya',
                                      style: TextStyle(
                                        fontFamily: fontNunito,
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 0),
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
                                          const EdgeInsets.symmetric(
                                              horizontal: 0),
                                      value: "Tidak",
                                      groupValue: "",
                                      visualDensity: const VisualDensity(
                                        horizontal:
                                            VisualDensity.minimumDensity,
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
                                  "6. Apakah Beberapa Waktu Terakhir Anda Mengalami Pusing Hingga Pingsan ?",
                              option: [
                                Flexible(
                                  child: RadioListTile(
                                    title: const Text(
                                      'Ya',
                                      style: TextStyle(
                                        fontFamily: fontNunito,
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 0),
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
                                          const EdgeInsets.symmetric(
                                              horizontal: 0),
                                      value: "Tidak",
                                      groupValue: "",
                                      visualDensity: const VisualDensity(
                                        horizontal:
                                            VisualDensity.minimumDensity,
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
                                  "7. Apakah Beberapa Waktu Terakhir Anda Mengalami Sakit Perut Saat Menstruasi ?",
                              option: [
                                Flexible(
                                  child: RadioListTile(
                                    title: const Text(
                                      'Ya',
                                      style: TextStyle(
                                        fontFamily: fontNunito,
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 0),
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
                                          const EdgeInsets.symmetric(
                                              horizontal: 0),
                                      value: "Tidak",
                                      groupValue: "",
                                      visualDensity: const VisualDensity(
                                        horizontal:
                                            VisualDensity.minimumDensity,
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
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  CustomElevatedButtonIcon(
                    label: "TUTUP",
                    icon: SvgPicture.asset(
                      "assets/icons/close.svg",
                      height: 25,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.red,
                    onPressed: () => Navigator.pop(context),
                  ),
                  SizedBox(width: size.width * 0.03),
                  CustomElevatedButtonIcon(
                    label: "PROSES",
                    icon: SvgPicture.asset(
                      "assets/icons/process.svg",
                      height: 25,
                      color: Colors.white,
                    ),
                    backgroundColor: colorSecondary,
                    onPressed: () => 1,
                  ),
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
