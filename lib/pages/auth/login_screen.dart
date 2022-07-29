import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/custom_elevated_button_icon.dart';
import 'package:moms_care_mobile/components/custom_text_field.dart';
import 'package:moms_care_mobile/consts/fonts.dart';
import '../../consts/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int tabIndex = 0;
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
                  child:
                      SvgPicture.asset("assets/images/password_isometric.svg"),
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
                    const Text(
                      'MASUK',
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
                    Center(
                      child: Text(
                        'Pilih ingin masuk sebagai Keluarga(Kepala Keluarga/Remaja) / Bidan / Penyuluh',
                        style: TextStyle(
                          color: grey.withOpacity(0.9),
                          fontFamily: fontNunito,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    DefaultTabController(
                      length: 3,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: TabBar(
                            unselectedLabelColor: Colors.black,
                            onTap: (index) {
                              tabIndex = index;
                            },
                            tabs: <Widget>[
                              Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    "assets/icons/family.svg",
                                    height: 20,
                                    color: tabIndex == 0
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Keluarga',
                                      style: TextStyle(
                                          fontFamily: fontNunito, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    "assets/icons/nurse.svg",
                                    height: 19,
                                    color: tabIndex == 1
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Bidan',
                                      style: TextStyle(
                                          fontFamily: fontNunito, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    "assets/icons/people_group.svg",
                                    height: 17,
                                    color: tabIndex == 1
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      'Penyuluh',
                                      style: TextStyle(
                                          fontFamily: fontNunito, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                            indicator: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    FilledTextField(
                      title: "Nomor Hp/NIK",
                      hintText: "081322......",
                      keyboardType: TextInputType.phone,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset("assets/icons/telephone.svg"),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    FilledTextField(
                      title: "Kata Sandi",
                      hintText: "Kata Sandi",
                      suffixIcon: IconButton(
                        icon: SvgPicture.asset(
                          1 == 1
                              ? "assets/icons/eye.svg"
                              : "assets/icons/bold/eye-slash.svg",
                          color: Theme.of(context).primaryColor.withAlpha(125),
                        ),
                        onPressed: () => 1,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Center(
                      child: CustomElevatedButtonIcon(
                          label: "Masuk",
                          icon: SvgPicture.asset(
                            "assets/icons/enter.svg",
                            height: size.height * 0.03,
                            color: Colors.white,
                          ),
                          onPressed: () => 1),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Belum memiliki akun keluarga?',
                            style: TextStyle(
                              color: grey.withOpacity(0.9),
                              fontFamily: fontNunito,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            ' Daftar disini',
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: fontNunito,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
