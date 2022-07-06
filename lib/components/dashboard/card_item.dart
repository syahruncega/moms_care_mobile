import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../consts/fonts.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 18),
            child: Container(
              decoration: BoxDecoration(
                color: white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                    topRight: Radius.circular(68.0)),
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
                    padding:
                        const EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: Row(children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 4),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 48,
                                  width: 2,
                                  decoration: BoxDecoration(
                                    color: HexColor('#87A0E5').withOpacity(0.5),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(4.0)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 4, bottom: 2),
                                        child: Text(
                                          'Anggota Keluarga',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: fontWorkSans,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            letterSpacing: -0.1,
                                            color: grey.withOpacity(0.5),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 28,
                                            height: 28,
                                            child: Image.asset(
                                                "assets/fitness_app/eaten.png"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4,
                                                bottom: 3,
                                                right: 4,
                                                top: 2),
                                            child: Text(
                                              'Untuk melihat dan menambahkan anggota\nKeluarga baru',
                                              style: TextStyle(
                                                fontFamily: fontWorkSans,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                letterSpacing: -0.2,
                                                color: grey.withOpacity(0.5),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 24, right: 24, top: 8, bottom: 8),
                              child: Container(
                                height: 2,
                                decoration: const BoxDecoration(
                                  color: colorPrimary,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                ),
                              ),
                            ),
                            Text('asdad'),
                            // Row(
                            //   children: <Widget>[
                            //     Container(
                            //       height: 48,
                            //       width: 2,
                            //       decoration: BoxDecoration(
                            //         color: HexColor('#F56E98').withOpacity(0.5),
                            //         borderRadius: const BorderRadius.all(
                            //             Radius.circular(4.0)),
                            //       ),
                            //     ),
                            //     Padding(
                            //       padding: const EdgeInsets.all(8.0),
                            //       child: Column(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         crossAxisAlignment:
                            //             CrossAxisAlignment.start,
                            //         children: <Widget>[
                            //           Padding(
                            //             padding: const EdgeInsets.only(
                            //                 left: 4, bottom: 2),
                            //             child: Text(
                            //               'Burned',
                            //               textAlign: TextAlign.center,
                            //               style: TextStyle(
                            //                 fontFamily: fontWorkSans,
                            //                 fontWeight: FontWeight.w500,
                            //                 fontSize: 16,
                            //                 letterSpacing: -0.1,
                            //                 color: grey.withOpacity(0.5),
                            //               ),
                            //             ),
                            //           ),
                            //           Row(
                            //             mainAxisAlignment:
                            //                 MainAxisAlignment.center,
                            //             crossAxisAlignment:
                            //                 CrossAxisAlignment.end,
                            //             children: <Widget>[
                            //               SizedBox(
                            //                 width: 28,
                            //                 height: 28,
                            //                 child: Image.asset(
                            //                     "assets/fitness_app/burned.png"),
                            //               ),
                            //               const Padding(
                            //                 padding: EdgeInsets.only(
                            //                     left: 4, bottom: 3),
                            //                 child: Text(
                            //                   // '${(102 * animation!.value).toInt()}',
                            //                   '2',
                            //                   textAlign: TextAlign.center,
                            //                   style: TextStyle(
                            //                     fontFamily: fontWorkSans,
                            //                     fontWeight: FontWeight.w600,
                            //                     fontSize: 16,
                            //                     color: textDarker,
                            //                   ),
                            //                 ),
                            //               ),
                            //               Padding(
                            //                 padding: const EdgeInsets.only(
                            //                     left: 8, bottom: 3),
                            //                 child: Text(
                            //                   'Kcal',
                            //                   textAlign: TextAlign.center,
                            //                   style: TextStyle(
                            //                     fontFamily: fontWorkSans,
                            //                     fontWeight: FontWeight.w600,
                            //                     fontSize: 12,
                            //                     letterSpacing: -0.2,
                            //                     color: grey.withOpacity(0.5),
                            //                   ),
                            //                 ),
                            //               ),
                            //             ],
                            //           )
                            //         ],
                            //       ),
                            //     )
                            //   ],
                            // )
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
