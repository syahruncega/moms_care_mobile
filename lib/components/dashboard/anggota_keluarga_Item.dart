import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/consts/fonts.dart';
import 'package:dotted_border/dotted_border.dart';

import '../../consts/colors.dart';
import '../../consts/hex_color.dart';

class MealsListView extends StatefulWidget {
  const MealsListView({Key? key}) : super(key: key);

  @override
  _MealsListViewState createState() => _MealsListViewState();
}

class _MealsListViewState extends State<MealsListView>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<MealsListData> mealsListData = MealsListData.tabIconsList;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Animation<double>? mainScreenAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: animationController!,
            curve: const Interval(0, 0.5, curve: Curves.fastOutSlowIn)));
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: mainScreenAnimation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - mainScreenAnimation.value), 0.0),
            child: Container(
              height: 350,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 0, right: 16, left: 16),
                itemCount: mealsListData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final int count =
                      mealsListData.length > 10 ? 10 : mealsListData.length;
                  final Animation<double> animation =
                      Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animationController!,
                              curve: Interval((1 / count) * index, 1.0,
                                  curve: Curves.fastOutSlowIn)));
                  animationController?.forward();

                  return MealsView(
                    mealsListData: mealsListData[index],
                    animation: animation,
                    animationController: animationController!,
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class MealsView extends StatelessWidget {
  const MealsView(
      {Key? key, this.mealsListData, this.animationController, this.animation})
      : super(key: key);

  final MealsListData? mealsListData;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                100 * (1.0 - animation!.value), 0.0, 0.0),
            child: SizedBox(
              width: 220,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 32, left: 8, right: 8, bottom: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: HexColor(mealsListData!.endColor)
                                  .withOpacity(0.6),
                              offset: const Offset(1.1, 4.0),
                              blurRadius: 8.0),
                        ],
                        gradient: LinearGradient(
                          colors: <HexColor>[
                            HexColor(mealsListData!.startColor),
                            HexColor(mealsListData!.endColor),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(18.0),
                          bottomLeft: Radius.circular(18.0),
                          topLeft: Radius.circular(18.0),
                          topRight: Radius.circular(74.0),
                          // topRight: Radius.circular(54.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 54, left: 16, right: 16, bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              mealsListData!.titleTxt,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: fontNunito,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 0.2,
                                color: white,
                              ),
                            ),
                            const Text(
                              "Kevin",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: fontNunito,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 0.2,
                                color: white,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 1,
                                      color: white.withOpacity(0.5),
                                    ),
                                    const Center(
                                      child: Text(
                                        "Laki - Laki",
                                        style: TextStyle(
                                          fontFamily: fontWorkSans,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          letterSpacing: 0.2,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      color: white.withOpacity(0.5),
                                    ),
                                    const Center(
                                      child: Text(
                                        "1 Januari 1996",
                                        style: TextStyle(
                                          fontFamily: fontWorkSans,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          letterSpacing: 0.2,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      color: white.withOpacity(0.5),
                                    ),
                                    const Center(
                                      child: Text(
                                        "26 Tahun, 6 Bulan",
                                        style: TextStyle(
                                          fontFamily: fontWorkSans,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          letterSpacing: 0.2,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      color: white.withOpacity(0.5),
                                    ),
                                    const Center(
                                      child: Text(
                                        "Bora",
                                        style: TextStyle(
                                          fontFamily: fontWorkSans,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          letterSpacing: 0.2,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      color: white.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            mealsListData?.kacl != 0
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      // Text(
                                      //   mealsListData!.kacl.toString(),
                                      //   textAlign: TextAlign.center,
                                      //   style: const TextStyle(
                                      //     fontFamily: fontWorkSans,
                                      //     fontWeight: FontWeight.w500,
                                      //     fontSize: 24,
                                      //     letterSpacing: 0.2,
                                      //     color: white,
                                      //   ),
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 4, bottom: 3),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            color: const Color(0xFF198754),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 8,
                                                right: 8,
                                                bottom: 2,
                                                top: 2),
                                            child: Text(
                                              'Tervalidasi',
                                              style: TextStyle(
                                                fontFamily: fontWorkSans,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                letterSpacing: 0.2,
                                                color: white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 25, bottom: 7),
                                        decoration: BoxDecoration(
                                          color: nearlyWhite,
                                          shape: BoxShape.circle,
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                                color: nearlyBlack
                                                    .withOpacity(0.4),
                                                offset: const Offset(8.0, 8.0),
                                                blurRadius: 8.0),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Icon(
                                            Icons.info_outline,
                                            color: HexColor(
                                                mealsListData!.endColor),
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      color: nearlyWhite,
                                      shape: BoxShape.circle,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            color: nearlyBlack.withOpacity(0.4),
                                            offset: const Offset(8.0, 8.0),
                                            blurRadius: 8.0),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Icon(
                                        Icons.add,
                                        color:
                                            HexColor(mealsListData!.endColor),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 84,
                      height: 84,
                      decoration: BoxDecoration(
                        color: nearlyWhite.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 8,
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: SvgPicture.asset(mealsListData!.imagePath),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/images/father.svg',
      titleTxt: 'KEPALA KELUARGA',
      kacl: 525,
      meals: <String>['Bread,', 'Peanut butter,', 'Apple'],
      startColor: '#157347',
      // startColor: '#FA7D82',
      endColor: '#4DCA88',
      // endColor: '#FFB295',
    ),
    MealsListData(
      imagePath: 'assets/images/mother.svg',
      titleTxt: 'ISTRI',
      kacl: 602,
      meals: <String>[
        'Perempuan,',
        '1 Januari 1996',
        '26 Tahun, 6 Bulan',
        'Bora'
      ],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MealsListData(
      imagePath: 'assets/images/children.svg',
      titleTxt: 'ANAK',
      kacl: 0,
      meals: <String>['Recommend:', '800 kcal'],
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    MealsListData(
      imagePath: 'assets/images/father.svg',
      titleTxt: 'Dinner',
      kacl: 0,
      meals: <String>['Recommend:', '703 kcal'],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
  ];
}
