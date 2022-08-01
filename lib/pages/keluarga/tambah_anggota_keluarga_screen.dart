import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:im_stepper/stepper.dart';
import '../../components/custom_autocompleted_textfield.dart';
import '../../components/custom_checkbox_input.dart';
import '../../components/custom_elevated_button_icon.dart';
import '../../components/custom_file_upload.dart';
import '../../components/custom_radio_input.dart';
import '../../components/custom_text_field.dart';
import '../../consts/colors.dart';
import '../../consts/fonts.dart';

class TambahAnggotaKeluargaScreen extends StatefulWidget {
  const TambahAnggotaKeluargaScreen({Key? key}) : super(key: key);

  @override
  State<TambahAnggotaKeluargaScreen> createState() =>
      _TambahAnggotaKeluargaScreenState();
}

class _TambahAnggotaKeluargaScreenState
    extends State<TambahAnggotaKeluargaScreen> {
  int activeStep = 0;
  int stepsBound = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundScaffold,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: backgroundScaffold,
      body: SingleChildScrollView(
        // child:
        // Padding(
        //   padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.04, left: 18),
                  child: const Text(
                    'Tambah Anggota Keluarga',
                    style: TextStyle(
                      fontSize: 19,
                      fontFamily: fontNunito,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17),
              child: Column(
                children: [
                  IconStepper(
                    icons: const <Icon>[
                      Icon(Icons.family_restroom, color: Colors.white),
                      Icon(
                        Icons.location_city,
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
                                if (activeStep > 0) {
                                  activeStep--;
                                }
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
                                activeStep < 1 ? "Selanjutnya" : "Kirim Data",
                            icon: activeStep < 1
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
                                if (activeStep < stepsBound) {
                                  activeStep++;
                                }
                              });
                            }),
                      ]),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                ],
              ),
            ),
          ],
        ),
        // ),
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
            child: Column(
              children: <Widget>[
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
                  hintText: '- Pilih salah satu -',
                  controller: TextEditingController(),
                  isRequired: true,
                  items: const [
                    {'label': 'Dummy Data', 'value': 'dummy-data'}
                  ],
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
              ],
            ),
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
            ));
      default:
        return Container();
    }
  }
}
