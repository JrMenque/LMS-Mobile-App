import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_prokit/Screens/QuizDashboard.dart';
import 'package:quiz_prokit/Screens/QuizSignUp.dart';
import 'package:quiz_prokit/utils/AppWidget.dart';
import 'package:quiz_prokit/utils/QuizColors.dart';
import 'package:quiz_prokit/utils/QuizStrings.dart';
import 'package:quiz_prokit/utils/QuizWidget.dart';

class QuizSignIn extends StatefulWidget {
  static String tag = '/QuizSignIn';

  @override
  _QuizSignInState createState() => _QuizSignInState();
}

class _QuizSignInState extends State<QuizSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                24.height,
                Text(quiz_title_login, style: boldTextStyle(size: 18)),
                8.height,
                Text(quiz_info_login, style: primaryTextStyle(color: quiz_textColorSecondary)).center(),
                Container(
                  margin: EdgeInsets.all(24.0),
                  decoration: boxDecoration(bgColor: context.cardColor, showShadow: true, radius: 10),
                  child: Column(
                    children: <Widget>[
                      quizEditTextStyle(quiz_hint_your_email, TextInputType.emailAddress, isPassword: false),
                      quizDivider(),
                      quizEditTextStyle(quiz_hint_your_password, TextInputType.text),
                    ],
                  ),
                ),
                30.height,
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(quiz_lbl_don_t_have_an_account, style: primaryTextStyle()),
                      4.height,
                      Text(quiz_lbl_create_account, style: boldTextStyle(color: quiz_colorPrimary)),
                    ],
                  ),
                ).onTap(
                  () {
                    setState(
                      () {
                        QuizSignUp().launch(context);
                      },
                    );
                  },
                ),
                8.height,
                Container(
                  margin: EdgeInsets.all(24.0),
                  child: quizButton(
                    textContent: quiz_lbl_continue,
                    onPressed: () {
                      setState(
                        () {
                          QuizDashboard().launch(context);
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
