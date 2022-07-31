import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:im_stepper/stepper.dart';
import 'package:lottie/lottie.dart';
import 'package:moms_care_mobile/components/custom_autocompleted_textfield.dart';
import 'package:moms_care_mobile/components/custom_checkbox_input.dart';
import 'package:moms_care_mobile/components/custom_file_upload.dart';
import 'package:moms_care_mobile/components/custom_radio_input.dart';

import '../../components/custom_elevated_button_icon.dart';
import '../../components/custom_text_field.dart';
import '../../consts/colors.dart';
import '../../consts/fonts.dart';

class RegistrasiKeluarga extends StatefulWidget {
  const RegistrasiKeluarga({Key? key}) : super(key: key);

  @override
  State<RegistrasiKeluarga> createState() => _RegistrasiKeluargaState();
}

class _RegistrasiKeluargaState extends State<RegistrasiKeluarga> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.06, bottom: size.height * 0.02),
                child: SizedBox(
                  height: size.height * 0.25,
                  child: LottieBuilder.asset("assets/anim/registration.json"),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 18, right: 18, bottom: 35),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                    topRight: Radius.circular(8.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: grey.withOpacity(0.2),
                      offset: const Offset(1.1, 1.1),
                      blurRadius: 10.0),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const <Widget>[
                        Text(
                          '*',
                          style: TextStyle(
                            fontFamily: fontNunito,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          ' = wajib diisi',
                          style: TextStyle(
                            fontFamily: fontNunito,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Registrasi',
                      style: TextStyle(
                        color: grey,
                        fontFamily: fontNunito,
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    IconStepper(
                      icons: const <Icon>[
                        Icon(Icons.app_registration, color: Colors.white),
                        Icon(
                          Icons.man,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.account_circle_outlined,
                          color: Colors.white,
                        ),
                      ],
                      activeStep: activeStep,
                      activeStepBorderWidth: 2,
                      lineLength: 33,
                      lineColor: cardDarkGreen,
                      activeStepBorderColor: cardDarkGreen,
                      stepColor: Colors.red.withOpacity(0.8),
                      onStepReached: (index) {
                        setState(() {
                          activeStep = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    registrationForm(),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          if (activeStep > 0)
                            CustomElevatedButtonIcon(
                              backgroundColor: Colors.red.withOpacity(0.7),
                              label: "Sebelumnya",
                              icon: SvgPicture.asset(
                                "assets/icons/previous.svg",
                                height: size.height * 0.03,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  activeStep--;
                                });
                              },
                            ),
                          if (activeStep > 0)
                            const SizedBox(
                              width: 10,
                            ),
                          CustomElevatedButtonIcon(
                              backgroundColor: colorSecondary,
                              label:
                                  activeStep < 2 ? "Selanjutnya" : "Kirim Data",
                              icon: activeStep < 2
                                  ? SvgPicture.asset(
                                      "assets/icons/next.svg",
                                      height: size.height * 0.03,
                                      color: Colors.white,
                                    )
                                  : SvgPicture.asset(
                                      "assets/icons/send.svg",
                                      height: size.height * 0.03,
                                      color: Colors.white,
                                    ),
                              onPressed: () {
                                setState(() {
                                  activeStep++;
                                });
                              }),
                        ]),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget registrationForm() {
    Size size = MediaQuery.of(context).size;
    switch (activeStep) {
      case 0:
        return DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(20),
          dashPattern: const [4, 4],
          color: cardDarkGreen,
          strokeWidth: 2,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(children: <Widget>[
              const Text(
                "-- Input Kartu Keluarga --",
                style: TextStyle(
                  fontFamily: fontNunito,
                  fontWeight: FontWeight.w600,
                  color: cardDarkGreen,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              CustomTextField(
                title: "Nomor Kartu Keluarga",
                hintText: "Cth. 760102..........",
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
                title: "Nama Kepala Keluarga",
                hintText: "Cth. Dyman",
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                isRequired: true,
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SvgPicture.asset(
                    "assets/icons/text-input.svg",
                    height: 20,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              CustomTextField(
                title: "Alamat",
                hintText: "Cth. Jl. R.E. Martadinata",
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                isRequired: true,
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SvgPicture.asset(
                    "assets/icons/text-input.svg",
                    height: 20,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                children: <Widget>[
                  const Flexible(
                    child: CustomTextField(
                      title: "RT",
                      hintText: "001",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                    ),
                    flex: 1,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  const Flexible(
                    child: CustomTextField(
                      title: "RW",
                      hintText: "002",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                    ),
                    flex: 1,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Flexible(
                    child: CustomTextField(
                      title: "Kode POS",
                      hintText: "942",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/number-input.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    flex: 2,
                  )
                ],
              ),
              SizedBox(height: size.height * 0.02),
              CustomAutocompletedTextField(
                title: 'Provinsi',
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
                title: 'Kabupaten / Kota',
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
                title: 'Kecamatan',
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
                title: 'Desa / Kelurahan',
                hintText: '- Pilih salah satu -',
                controller: TextEditingController(),
                isRequired: true,
                items: const [
                  {'label': 'Dummy Data', 'value': 'dummy-data'}
                ],
                onSuggestionSelected: (value) => value,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const CustomFileUpload(
                title: "Upload Kartu Keluarga (.pdf / .jpg / .png)",
                subTitle: "Pilih file yang ingin diunggah",
              ),
            ]),
          ),
        );
      case 1:
        return DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(20),
          dashPattern: const [4, 4],
          color: cardDarkGreen,
          strokeWidth: 2,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                const Text(
                  '-- Input Kepala Keluarga --',
                  style: TextStyle(
                    fontFamily: fontNunito,
                    fontWeight: FontWeight.w600,
                    color: cardDarkGreen,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                CustomTextField(
                  title: "Nama Lengkap",
                  hintText: "Cth. A. Mardiman Saputra",
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  isRequired: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset(
                      "assets/icons/text-input.svg",
                      height: 20,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                CustomTextField(
                  title: "NIK",
                  hintText: "Cth. 76010226........",
                  keyboardType: TextInputType.number,
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
                CustomRadioInput(
                  isRequired: true,
                  title: "Jenis Kelamin",
                  option: [
                    Flexible(
                      child: RadioListTile(
                        title: const Text(
                          'Laki - laki',
                          style: TextStyle(
                            fontFamily: fontNunito,
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        value: "Laki-laki",
                        groupValue: "Laki-laki",
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
                            'Perempuan',
                            style: TextStyle(
                              fontFamily: fontNunito,
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 0),
                          value: "Perempuan",
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
                SizedBox(height: size.height * 0.02),
                CustomTextField(
                  title: "Tempat Lahir",
                  hintText: "Cth. Palu",
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  isRequired: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset(
                      "assets/icons/address-input.svg",
                      height: 20,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                CustomTextField(
                  title: "Tanggal Lahir",
                  hintText: "Cth. 26 - 06 - 1998",
                  keyboardType: TextInputType.datetime,
                  textInputAction: TextInputAction.next,
                  isRequired: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset(
                      "assets/icons/date-input.svg",
                      height: 20,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                CustomAutocompletedTextField(
                  title: 'Agama',
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
                  title: 'Pendidikan',
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
                  title: 'Jenis Pekerjaan',
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
                  title: 'Golongan Darah',
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
                  title: 'Status Perkawinan',
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
                  title: "Tanggal Perkawinan",
                  hintText: "Cth. 31 - 01 - 2022",
                  keyboardType: TextInputType.datetime,
                  textInputAction: TextInputAction.next,
                  isRequired: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset(
                      "assets/icons/date-input.svg",
                      height: 20,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                CustomAutocompletedTextField(
                  title: 'Status Hubugan Dalam Keluarga',
                  hintText: 'KEPALA KELUARGA',
                  controller: TextEditingController(),
                  isRequired: true,
                  enabled: false,
                  items: const [],
                  onSuggestionSelected: (value) => value,
                ),
                SizedBox(height: size.height * 0.02),
                CustomRadioInput(
                  isVertical: true,
                  isRequired: true,
                  title: "Kewarganegaraan",
                  option: [
                    RadioListTile(
                      title: const Text(
                        'Warga Negara Indonesia (WNI)',
                        style: TextStyle(
                          fontFamily: fontNunito,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                      value: "WNI",
                      groupValue: "WNI",
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      activeColor: cardDarkGreen,
                      onChanged: (value) => value,
                    ),
                    RadioListTile(
                        title: const Text(
                          'Warga Negara Asing (WNA)',
                          style: TextStyle(
                            fontFamily: fontNunito,
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        value: "WNA",
                        groupValue: "",
                        visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity,
                        ),
                        activeColor: cardDarkGreen,
                        onChanged: (value) => value),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                CustomTextField(
                  title: "Nomor Paspor",
                  hintText: "Cth. 1A13JB......",
                  keyboardType: TextInputType.datetime,
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
                  title: "Nomor KITAP",
                  hintText: "Cth. 1A13JB......",
                  keyboardType: TextInputType.datetime,
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
                  title: "Nama Ayah",
                  hintText: "Cth. Saputra",
                  keyboardType: TextInputType.datetime,
                  textInputAction: TextInputAction.next,
                  isRequired: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset(
                      "assets/icons/text-input.svg",
                      height: 20,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                CustomTextField(
                  title: "Nama Ibu",
                  hintText: "Cth. Saputri",
                  keyboardType: TextInputType.datetime,
                  textInputAction: TextInputAction.next,
                  isRequired: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset(
                      "assets/icons/text-input.svg",
                      height: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                CustomFileUpload(
                  isPicture: true,
                  title: "Foto Profil",
                  subTitle: "Pilih foto yang ingin diunggah",
                  icon: SvgPicture.asset(
                    "assets/icons/user.svg",
                    height: 85,
                    color: grey.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [2, 2],
                    color: cardDarkGreen.withOpacity(0.5),
                    strokeWidth: 2,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(children: <Widget>[
                        const Text(
                          '- Domisili -',
                          style: TextStyle(
                            fontFamily: fontNunito,
                            fontWeight: FontWeight.w600,
                            color: cardDarkGreen,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const CustomCheckboxInput(
                          title: 'Samakan dengan alamat kartu keluarga',
                          subTitle:
                              '* centang jika alamat anda saat ini sama dengan yang ada pada kartu keluarga *',
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        CustomTextField(
                          title: "Alamat",
                          hintText: "Cth. Palu",
                          keyboardType: TextInputType.datetime,
                          textInputAction: TextInputAction.next,
                          isRequired: true,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: SvgPicture.asset(
                              "assets/icons/address-input.svg",
                              height: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        CustomAutocompletedTextField(
                          title: 'Provinsi',
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
                          title: 'Kabupaten / Kota',
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
                          title: 'Kecamatan',
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
                          title: 'Desa / Kelurahan',
                          hintText: '- Pilih salah satu -',
                          controller: TextEditingController(),
                          isRequired: true,
                          items: const [
                            {'label': 'Dummy Data', 'value': 'dummy-data'}
                          ],
                          onSuggestionSelected: (value) => value,
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const CustomFileUpload(
                          title: "Upload Surat Ket. Domisili(.pdf/.jpg/.png)",
                          subTitle: "Pilih file yang ingin diunggah",
                        ),
                      ]),
                    ))
              ],
            ),
          ),
        );
      case 2:
        return DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(20),
          dashPattern: const [4, 4],
          color: cardDarkGreen,
          strokeWidth: 2,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(children: <Widget>[
              const Text('-- Input Akun --',
                  style: TextStyle(
                    color: cardDarkGreen,
                    fontFamily: fontNunito,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(
                height: size.height * 0.02,
              ),
              CustomTextField(
                title: "Nomor HP",
                hintText: "Cth. 081322......",
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                isRequired: true,
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SvgPicture.asset(
                    "assets/icons/telephone.svg",
                    height: 20,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              CustomTextField(
                obsecureText: true,
                title: "Kata Sandi",
                hintText: "Kata Sandi",
                isRequired: true,
                suffixIcon: IconButton(
                  icon: SvgPicture.asset(
                    1 == 1
                        ? "assets/icons/eye.svg"
                        : "assets/icons/bold/eye-slash.svg",
                    color: colorPrimary.withAlpha(125),
                    // color: Theme.of(context).primaryColor.withAlpha(125),
                  ),
                  onPressed: () => 1,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              CustomTextField(
                obsecureText: true,
                title: "Ulangi Kata Sandi",
                hintText: "Kata Sandi",
                isRequired: true,
                suffixIcon: IconButton(
                  icon: SvgPicture.asset(
                    1 == 1
                        ? "assets/icons/eye.svg"
                        : "assets/icons/bold/eye-slash.svg",
                    color: colorPrimary.withAlpha(125),
                    // color: Theme.of(context).primaryColor.withAlpha(125),
                  ),
                  onPressed: () => 1,
                ),
              ),
            ]),
          ),
        );
      default:
        return Container();
    }
  }
}
