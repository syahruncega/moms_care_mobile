import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/consts/fonts.dart';

import '../../../../../consts/colors.dart';
import '../../../../../consts/hex_color.dart';
import '../../../util/custom_button_icon.dart';

class BidanPerkembanganAnakCard extends StatelessWidget {
  final String dateCreated;
  final String dateValidated;
  final String namaAnak;
  final String alamat;
  final String bidan;
  final bool isValidated;
  final Function()? onTap;
  final dynamic Function()? onDelete;
  final dynamic Function()? onEdit;

  const BidanPerkembanganAnakCard(
      {required this.dateValidated,
      required this.dateCreated,
      required this.namaAnak,
      required this.alamat,
      required this.bidan,
      required this.isValidated,
      this.onTap,
      this.onDelete,
      this.onEdit,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Slidable(
        key: key,
        endActionPane: ActionPane(
          motion: const BehindMotion(),
          extentRatio: 0.35,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomIconButton(
                onTap: onDelete ?? () {},
                color: Colors.red.shade400,
                icon: SvgPicture.asset(
                  "assets/icons/delete.svg",
                  height: 25,
                  color: Colors.white,
                ),
              ),
            ),
            CustomIconButton(
              onTap: onEdit ?? () {},
              color: Colors.amber,
              icon: SvgPicture.asset(
                "assets/icons/pencil.svg",
                height: 25,
                color: Colors.white,
              ),
            )
          ],
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 17, right: 17, top: 16, bottom: 18),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: grey.withOpacity(0.2),
                    offset: const Offset(1.1, 1.1),
                    blurRadius: 10.0),
              ],
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 2, right: 16),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 1),
                        width: 4,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: cardDarkGreenVariant,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 15, right: 8, top: 4),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 120,
                                    width: 2,
                                    decoration: BoxDecoration(
                                      color:
                                          HexColor('#87A0E5').withOpacity(0.5),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SvgPicture.asset(
                                                "assets/icons/add1.svg",
                                                height: 19,
                                                color: HexColor('#87A0E5')
                                                    .withOpacity(1.0),
                                              ),
                                              SizedBox(
                                                  width: size.width * 0.02),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 2),
                                                child: Text(
                                                  dateCreated,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: fontNunito,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                    letterSpacing: -0.1,
                                                    color:
                                                        grey.withOpacity(0.5),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                        Row(children: [
                                          SvgPicture.asset(
                                            "assets/icons/form.svg",
                                            height: 19,
                                            color: HexColor('#87A0E5')
                                                .withOpacity(1.0),
                                          ),
                                          SizedBox(width: size.width * 0.02),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 2),
                                            child: Text(
                                              dateValidated,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: fontNunito,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                letterSpacing: -0.1,
                                                color: grey.withOpacity(0.5),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: size.width * 0.05),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 18,
                                                height: 18,
                                                child: isValidated
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
                                                  isValidated
                                                      ? "Tervalidasi"
                                                      : "Belum Divalidasi",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: fontNunito,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 12,
                                                      color: isValidated
                                                          ? Colors.green
                                                          : Colors.amber
                                                              .withOpacity(
                                                                  0.8)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            SizedBox(
                                              width: 18,
                                              height: 24,
                                              child: SvgPicture.asset(
                                                "assets/icons/child.svg",
                                                color: HexColor('#87A0E5')
                                                    .withOpacity(1.0),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 4,
                                              ),
                                              child: SizedBox(
                                                width: size.width * 0.3,
                                                child: Text(
                                                  namaAnak,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontFamily: fontNunito,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 15,
                                                    color: textDarker,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            SizedBox(
                                              width: 18,
                                              height: 24,
                                              child: SvgPicture.asset(
                                                "assets/icons/nurse1.svg",
                                                color: HexColor('#87A0E5')
                                                    .withOpacity(1.0),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 4,
                                              ),
                                              child: Text(
                                                bidan,
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                  fontFamily: fontNunito,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: textDarker,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            SizedBox(
                                              width: 18,
                                              height: 24,
                                              child: SvgPicture.asset(
                                                "assets/icons/address-input.svg",
                                                color: HexColor('#87A0E5')
                                                    .withOpacity(1.0),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 4,
                                              ),
                                              child: Text(
                                                alamat,
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                  fontFamily: fontNunito,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: textDarker,
                                                ),
                                                // overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
