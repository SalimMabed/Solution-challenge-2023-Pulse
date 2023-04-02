import 'package:flutter/material.dart';
import 'utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/services.dart';

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // menuTqF (124:7)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*Container(
              // autogroupfzpdNBX (F1ToxJbqUFs1fMDhACfzpd)
              padding:
                  EdgeInsets.fromLTRB(26 * fem, 13 * fem, 25 * fem, 13 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff14181b),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // isolatedmonochromewhite13oT (124:37)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 191 * fem, 0 * fem),
                    width: 100 * fem,
                    height: 40 * fem,
                    child: Image.asset(
                      'assets/page-1/images/isolated-monochrome-white-1-RiV.png',
                      width: 100 * fem,
                      height: 40 * fem,
                    ),
                  ),
                  Container(
                    // autogrouprhhwjAV (F1Tp9DTKeNTSPS3w6UrHHw)
                    width: 48 * fem,
                    height: 46 * fem,
                    child: Image.asset(
                      'assets/page-1/images/auto-group-rhhw.png',
                      width: 48 * fem,
                      height: 46 * fem,
                    ),
                  ),
                ],
              ),
            ),*/
            Container(
              // autogrouppuffSKo (F1Tq82A1BL312zjShZpUfF)
              padding:
                  EdgeInsets.fromLTRB(2 * fem, 43 * fem, 2 * fem, 59 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupwnkvLRB (F1TpHssZA6SS6NMs74wnkV)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 72 * fem),
                    width: double.infinity,
                    height: 154 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupwfjvqMw (F1TpVxMmJdeR8ERfxxwfJV)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 8 * fem, 0 * fem),
                          width: 189 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // iconwallet8bw (125:6)
                                left: 51 * fem,
                                top: 12 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 97.19 * fem,
                                    height: 88.54 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/icon-wallet.png',
                                      width: 97.19 * fem,
                                      height: 88.54 * fem,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // supporttheappBKK (125:17)
                                left: 5 * fem,
                                top: 114 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 179 * fem,
                                    height: 30 * fem,
                                    child: Text(
                                      'Support the app',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 25 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle25RUZ (128:2)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 189 * fem,
                                    height: 154 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15 * fem),
                                        border: Border.all(
                                            color: Color(0xff000000)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupmykbtsw (F1TpeNHQxynN3vu8CvMyKB)
                          width: 189 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // iconwallet8bw (125:6)
                                left: 51 * fem,
                                top: 12 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 97.19 * fem,
                                    height: 88.54 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/icon-leaderboard-star.png',
                                      width: 97.19 * fem,
                                      height: 88.54 * fem,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rateusQbP (125:16)
                                left: 52.5 * fem,
                                top: 114 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 84 * fem,
                                    height: 30 * fem,
                                    child: Text(
                                      'Rate us',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Roboto',
                                        fontSize: 25 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle26GNh (128:4)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 189 * fem,
                                    height: 154 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15 * fem),
                                        border: Border.all(
                                            color: Color(0xff000000)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // reportissuesY5K (124:41)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 141 * fem, 28 * fem),
                    child: Text(
                      'Report issues',
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 30 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.1725 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // contactdevelopersR97 (124:42)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 65 * fem, 93 * fem),
                    child: Text(
                      'Contact developers',
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 30 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.1725 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // sharewithyourfriends5jT (127:21)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 8 * fem, 19 * fem),
                    child: Text(
                      'Share with your friends',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 21 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.1725 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroup9qch9zD (F1TprrvbXp4m3rh4gY9qcH)
                    margin: EdgeInsets.fromLTRB(
                        38 * fem, 0 * fem, 35 * fem, 42.71 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            String fbUrl =
                                'https://www.facebook.com/your-facebook-page-url';
                            launch(fbUrl);
                          },
                          child: Container(
                            // iconfacebookqMF (127:14)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 21 * fem, 0.65 * fem),
                            width: 60 * fem,
                            height: 59.64 * fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-facebook.png',
                              width: 60 * fem,
                              height: 59.64 * fem,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            String fbUrl =
                                'https://www.instagram.com/your-instagram-page-url';
                            launch(fbUrl);
                          },
                          child: Container(
                            // iconfacebookqMF (127:14)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 32 * fem, 0.29 * fem),

                            width: 60 * fem,
                            height: 60 * fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-instagram.png',
                              width: 60 * fem,
                              height: 60 * fem,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            String fbUrl =
                                'https://www.twitter.com/your-twitter-page-url';
                            launch(fbUrl);
                          },
                          child: Container(
                            // iconfacebookqMF (127:14)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0.48 * fem, 20 * fem, 0 * fem),
                            width: 60 * fem,
                            height: 48.77 * fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-twitter.png',
                              width: 60 * fem,
                              height: 48.77 * fem,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            String fbUrl =
                                'https://www.whatsapp.com/your-whatsapp-page-url';
                            launch(fbUrl);
                          },
                          child: Container(
                            // iconfacebookqMF (127:14)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0.65 * fem),
                            width: 60 * fem,
                            height: 60.29 * fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-whatsapp.png',
                              width: 60 * fem,
                              height: 60.29 * fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // savelivespulse10mXj (127:22)
                    margin:
                        EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: SafeGoogleFont(
                          'Roboto',
                          fontSize: 21 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.171875 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Save lives \n',
                            style: SafeGoogleFont(
                              'Roboto',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: 'Pulse 1.0',
                            style: SafeGoogleFont(
                              'Roboto',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725 * ffem / fem,
                              color: Color(0xff000000),
                            ),
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
    );
  }
}
