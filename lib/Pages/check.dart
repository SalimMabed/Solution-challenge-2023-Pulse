import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _questionIndex = 0;
  List<bool> clicked = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: const Color(0xffd32f1b),
        title: const Text(
          'Check health',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(18 * fem),
              ),
              child: Column(children: [
                // Personal information section
                Container(
                  padding: EdgeInsets.fromLTRB(
                      16.5 * fem, 20 * fem, 30.5 * fem, 62 * fem),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Personal informations',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.cabin(
                            fontSize: 25 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.215 * ffem / fem,
                            color: const Color(0xffd32f1b),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(16.5 * fem, 0, 0, 0),
                        width: double.infinity,
                        child: Text(
                          'Sex',
                          style: GoogleFonts.cabin(
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.8725 * ffem / fem,
                            color: const Color(0xffd32f1b),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    clicked[0] = true;
                                    clicked[1] = false;
                                    clicked[2] = false;
                                  });
                                  // Add your logic here when the "YES" button is clicked
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: clicked[0]
                                      ? Colors.white
                                      : Color(0xffd32f1b),
                                  backgroundColor: clicked[0]
                                      ? Color(0xffd32f1b)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10 * fem),
                                    side: BorderSide(
                                      color: clicked[0]
                                          ? Color(0xffd32f1b)
                                          : Color(0xff262a32),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Male',
                                  style: TextStyle(
                                    color: clicked[0]
                                        ? Colors.white
                                        : Color(0xff262a32),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    clicked[0] = false;
                                    clicked[1] = true;
                                    clicked[2] = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: clicked[1]
                                      ? Colors.white
                                      : Color(0xff262a32),
                                  backgroundColor: clicked[1]
                                      ? Color(0xffd32f1b)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10 * fem),
                                    side: BorderSide(
                                      color: clicked[1]
                                          ? Color(0xffd32f1b)
                                          : Color(0xff262a32),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Female',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    clicked[0] = false;
                                    clicked[1] = false;
                                    clicked[2] = true;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: clicked[2]
                                      ? Colors.white
                                      : Color(0xff262a32),
                                  backgroundColor: clicked[2]
                                      ? Color(0xffd32f1b)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10 * fem),
                                    side: BorderSide(
                                      color: clicked[2]
                                          ? Color(0xffd32f1b)
                                          : Color(0xff262a32),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Other',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            10 * fem, 0 * fem, 8.5 * fem, 27 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              child: TextFormField(
                                initialValue: "  ",
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10),
                                  labelText: 'Age',
                                  suffixIcon: Icon(Icons.person),
                                  labelStyle: TextStyle(
                                    color: Color(0xffd32f1b),
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Flexible(
                              child: TextFormField(
                                initialValue: "  ",
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10),
                                  suffixIcon: Icon(Icons.scale),
                                  iconColor: Color(0xffd32f1b),
                                  labelText: 'Weight',
                                  labelStyle: TextStyle(
                                    color: Color(0xffd32f1b),
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.check_circle_outline_rounded,
                                color: Color(0xffd32f1b),
                                size: 25,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Check Eligibility',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.cabin(
                                  fontSize: 25 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.215 * ffem / fem,
                                  color: const Color(0xffd32f1b),
                                ),
                              ),
                            ]),
                      ),
                      // Question section
                      QuestionSection(
                        questionIndex: _questionIndex,
                        onNextPressed: () {
                          setState(() {
                            // Move to the next set of questions
                            _questionIndex += 2;
                          });
                        },
                      ),
                    ],
                  ),
                )
              ]))),
    );
  }
}

class QuestionSection extends StatefulWidget {
  final int questionIndex;

  final VoidCallback onNextPressed;

  const QuestionSection({
    Key? key,
    required this.questionIndex,
    required this.onNextPressed,
  }) : super(key: key);

  @override
  _QuestionSectionState createState() => _QuestionSectionState();
}

class _QuestionSectionState extends State<QuestionSection> {
  bool _buttonVisiblenext = true;
  bool _buttonVisibleverify = false;
  bool isEligible = false;
  List<bool> clicked = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  void checkEligibility() {
    setState(() {
      isEligible = clicked[6] && clicked[8] && clicked[10];
    });

    if (isEligible) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Congratulations, you are eligible to donate blood !'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Sorry, you are not eligible.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      children: [
        // Show the first set of questions
        if (widget.questionIndex == 0) ...[
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 18 * fem),
            constraints: BoxConstraints(
              maxWidth: 310 * fem,
            ),
            child: Text(
              '1 - Have you traveled outside of the country within the past 12 months? ',
              textAlign: TextAlign.center,
              style: GoogleFonts.cabin(
                fontSize: 21 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.215 * ffem / fem,
                color: const Color(0xff262a32),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.fromLTRB(13.5 * fem, 0 * fem, 1.5 * fem, 21 * fem),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          clicked[3] = true;
                          clicked[4] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            clicked[3] ? Colors.white : Color(0xff262a32),
                        backgroundColor:
                            clicked[3] ? Color(0xffd32f1b) : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10 * fem),
                          side: BorderSide(
                            color: clicked[3]
                                ? Color(0xffd32f1b)
                                : Color(0xff262a32),
                          ),
                        ),
                        minimumSize: Size(148 * fem, 50 * fem),
                      ),
                      child: Text(
                        'YES',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          clicked[3] = false;
                          clicked[4] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            clicked[4] ? Colors.white : Color(0xff262a32),
                        backgroundColor:
                            clicked[4] ? Color(0xffd32f1b) : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10 * fem),
                          side: BorderSide(
                            color: clicked[4]
                                ? Color(0xffd32f1b)
                                : Color(0xff262a32),
                          ),
                        ),
                        minimumSize: Size(148 * fem, 50 * fem),
                      ),
                      child: const Text(
                        'NO',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: clicked[3],
                  child: TextFormField(
                    decoration: const InputDecoration(
                      suffixIconColor: Colors.grey,
                      fillColor: Colors.grey,
                      labelStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.travel_explore,
                        color: Color(0xffd32f1b),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                      labelText: 'Which country you visitied ? ',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 18 * fem),
            constraints: BoxConstraints(
              maxWidth: 310 * fem,
            ),
            child: Text(
              '2 - Have you had any recent surgeries or medical procedures?  ',
              textAlign: TextAlign.center,
              style: GoogleFonts.cabin(
                fontSize: 21 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.215 * ffem / fem,
                color: const Color(0xff262a32),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.fromLTRB(13.5 * fem, 0 * fem, 1.5 * fem, 21 * fem),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          clicked[5] = true;
                          clicked[6] = false;
                        });
                        // Add your logic here when the "YES" button is clicked
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            clicked[5] ? Colors.white : Color(0xff262a32),
                        backgroundColor:
                            clicked[5] ? Color(0xffd32f1b) : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10 * fem),
                          side: BorderSide(
                            color: clicked[5]
                                ? const Color(0xffd32f1b)
                                : const Color(0xff262a32),
                          ),
                        ),
                        minimumSize: Size(148 * fem, 50 * fem),
                      ),
                      child: const Text(
                        'YES',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          clicked[5] = false;
                          clicked[6] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            clicked[6] ? Colors.white : Color(0xff262a32),
                        backgroundColor:
                            clicked[6] ? Color(0xffd32f1b) : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10 * fem),
                          side: BorderSide(
                            color: clicked[6]
                                ? Color(0xffd32f1b)
                                : Color(0xff262a32),
                          ),
                        ),
                        minimumSize: Size(148 * fem, 50 * fem),
                      ),
                      child: const Text(
                        'NO',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: clicked[5],
                  child: TextFormField(
                    decoration: const InputDecoration(
                      suffixIconColor: Colors.grey,
                      fillColor: Colors.grey,
                      labelStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.medical_information,
                        color: Color(0xffd32f1b),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                      labelText:
                          'What kind of surgeries or medical procedures  ? ',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        // Show the second set of questions
        if (widget.questionIndex == 2) ...[
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 18 * fem),
            constraints: BoxConstraints(
              maxWidth: 310 * fem,
            ),
            child: Text(
              '3 - Have you been diagnosed with any infectious diseases or sexually transmitted infections (STIs) ?',
              textAlign: TextAlign.center,
              style: GoogleFonts.cabin(
                fontSize: 21 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.215 * ffem / fem,
                color: const Color(0xff262a32),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.fromLTRB(13.5 * fem, 0 * fem, 1.5 * fem, 21 * fem),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          clicked[7] = true;
                          clicked[8] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            clicked[7] ? Colors.white : Color(0xff262a32),
                        backgroundColor:
                            clicked[7] ? Color(0xffd32f1b) : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10 * fem),
                          side: BorderSide(
                            color: clicked[7]
                                ? Color(0xffd32f1b)
                                : Color(0xff262a32),
                          ),
                        ),
                        minimumSize: Size(148 * fem, 50 * fem),
                      ),
                      child: Text(
                        'YES',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          clicked[7] = false;
                          clicked[8] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            clicked[8] ? Colors.white : Color(0xff262a32),
                        backgroundColor:
                            clicked[8] ? Color(0xffd32f1b) : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10 * fem),
                          side: BorderSide(
                            color: clicked[8]
                                ? Color(0xffd32f1b)
                                : Color(0xff262a32),
                          ),
                        ),
                        minimumSize: Size(148 * fem, 50 * fem),
                      ),
                      child: const Text(
                        'NO',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: clicked[7],
                  child: TextFormField(
                    decoration: const InputDecoration(
                      suffixIconColor: Colors.grey,
                      fillColor: Colors.grey,
                      labelStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.medication_liquid,
                        color: Color(0xffd32f1b),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                      labelText: 'What is this disease ? ',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 18 * fem),
            constraints: BoxConstraints(
              maxWidth: 310 * fem,
            ),
            child: Text(
              '4 - Are you currently taking any medications?',
              textAlign: TextAlign.center,
              style: GoogleFonts.cabin(
                fontSize: 21 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.215 * ffem / fem,
                color: const Color(0xff262a32),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.fromLTRB(13.5 * fem, 0 * fem, 1.5 * fem, 21 * fem),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          clicked[9] = true;
                          clicked[10] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            clicked[9] ? Colors.white : Color(0xff262a32),
                        backgroundColor:
                            clicked[9] ? Color(0xffd32f1b) : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10 * fem),
                          side: BorderSide(
                            color: clicked[9]
                                ? Color(0xffd32f1b)
                                : Color(0xff262a32),
                          ),
                        ),
                        minimumSize: Size(148 * fem, 50 * fem),
                      ),
                      child: Text(
                        'YES',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          clicked[9] = false;
                          clicked[10] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            clicked[10] ? Colors.white : Color(0xff262a32),
                        backgroundColor:
                            clicked[10] ? Color(0xffd32f1b) : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10 * fem),
                          side: BorderSide(
                            color: clicked[10]
                                ? Color(0xffd32f1b)
                                : Color(0xff262a32),
                          ),
                        ),
                        minimumSize: Size(148 * fem, 50 * fem),
                      ),
                      child: const Text(
                        'NO',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: clicked[9],
                  child: TextFormField(
                    decoration: const InputDecoration(
                      suffixIconColor: Colors.grey,
                      fillColor: Colors.grey,
                      labelStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.medication,
                        color: Color(0xffd32f1b),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                      labelText: 'What are the taking medications ? ',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],

        _buttonVisiblenext
            ? ElevatedButton(
                onPressed: () {
                  widget.onNextPressed();
                  setState(() {
                    _buttonVisiblenext = false;
                    _buttonVisibleverify = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff262a32),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text("Next"),
              )
            : SizedBox(),
        _buttonVisibleverify
            ? ElevatedButton(
                onPressed: checkEligibility,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff262a32),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text("Verify"),
              )
            : SizedBox(),
      ],
    );
  }
}

class Question extends StatelessWidget {
  final String text;
  final bool answer;
  final ValueChanged<bool> onAnswerChanged;

  const Question({
    Key? key,
    required this.text,
    required this.answer,
    required this.onAnswerChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(text),
      Row(
        children: [
          Text('Yes'),
          Checkbox(
            value: answer,
            onChanged: null,
          ),
          Text('No'),
          Checkbox(
            value: !answer,
            onChanged: (value) {
              onAnswerChanged(!value!);
            },
          ),
        ],
      ),
    ]);
  }
}
