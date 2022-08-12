import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/util/custom_autocompleted_textfield.dart';
import 'package:moms_care_mobile/components/util/custom_radio_input.dart';

import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';
import '../../../util/custom_elevated_button_icon.dart';

class BidanUbahIbuStuntingModal extends StatelessWidget {
  const BidanUbahIbuStuntingModal({Key? key}) : super(key: key);

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
                  Flexible(
                    child: Text(
                      'Edit Deteksi Ibu Melahirkan Stunting',
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
                      title: 'Nama Ibu (Tanggal Lahir)',
                      hintText: '- Pilih salah satu -',
                      controller: TextEditingController(),
                      isRequired: true,
                      items: const [
                        {'label': 'Dummy Data', 'value': 'dummy-data'}
                      ],
                      onSuggestionSelected: (value) => value,
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
