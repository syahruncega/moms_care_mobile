import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/custom_autocompleted_textfield.dart';
import 'package:moms_care_mobile/components/custom_radio_input.dart';
import 'package:moms_care_mobile/components/custom_text_field.dart';

import '../../consts/colors.dart';
import '../../consts/fonts.dart';
import '../custom_elevated_button_icon.dart';

class TambahDeteksiDiniModal extends StatelessWidget {
  const TambahDeteksiDiniModal({Key? key}) : super(key: key);

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
                    'Deteksi Dini',
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
                                  "1. Apakah Anda Hamil Terlalu Muda (Kurang Dari 20 Tahun ) ?",
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
                                  "2. Apakah Anda Terlalu lambat hamil (Usia Perkawinan Sudah Lebih 4 th) ?",
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
                                  "3. Apakah Anda Hamil Di Usia (Lebih Dari 35 Tahun) ?",
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
                                  "4. Apakah Jarak Kehamilan Anda (Kurang Dari 2 Tahun) ?",
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
                                  "5. Apakah Jarak Kehamilan Anda Terlalu Lama (Lebih Dari 10 Tahun) ?",
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
                                  "6. Apakah Anda Memiliki Anak Lebih Dari 4 ?",
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
                                  "7. Apakah Umur Anda Lebih Dari 35 Tahun ?",
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
                                  "8. Apakah Tinggi Badan Anda Kurang dari 145cm ?",
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
                                  "9. Apakah Anda Pernah Mengalami Kegagalan Kehamilan ?",
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
                                  "10. Apakah Anda Pernah Melahirkan Dengan Tarikan Tang/Vakum ?",
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
                                  "11. Apakah Anda pernah melahirkan dengan Uri Dirogoh ?",
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
                                  "12. Apakah Anda Pernah Melahirkan dengan Diberi Infus/Transfusi Darah ?",
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
                                  "13. Apakah Anda Pernah Melahirkan Melalui Operasi Sesar ?",
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
                                  "14. Apakah Anda Punya Penyakit Kurang Darah ?",
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
                                  "15. Apakah Anda Punya Penyakit TBC Paru ?",
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
                                  "16. Apakah Anda Punya Penyakit Jantung Lemah ?",
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
                                  "17. Apakah Anda Punya Penyakit Kencing Manis / Diabetes ?",
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
                                  "18. Apakah Anda Punya Penyakit Menular Seksual ?",
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
                                  "19. Apakah Anda Bengkak pada Muka/Tungkai dan Tekanan Darah Tinggi ?",
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
                                  "20. Apakah Anda Hamil Kembar 2 Atau Lebih ?",
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
                                  "21. Apakah Anda Hamil Kembar Air (Hydraminon) ?",
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
                                  "22. Apakah Anda Pernah Mengalami Bayi Mati dalam Kandungan ?",
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
                                  "23. Apakah Kehamilan Anda Kelebihan Bulan ?",
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
                              title: "24. Apakah Letak Bayi Anda Sungsang ?",
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
                              title: "25. Apakah Letak Bayi Anda Lintang ?",
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
                                  "26. Apakah Anda Pernah Mengalami Pendarahan Pada Kehamilan Ini ?",
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
                                  "27. Apakah Anda Pre-eklampsia berat/kejang-kejang ?",
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
