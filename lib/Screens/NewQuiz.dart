import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_prokit/model/QuizModels.dart';
import 'package:quiz_prokit/utils/AppWidget.dart';
import 'package:quiz_prokit/utils/QuizColors.dart';
import 'package:quiz_prokit/utils/QuizConstant.dart';

// ignore: must_be_immutable
class NewQuiz extends StatelessWidget {
  late NewQuizModel model;

  NewQuiz(NewQuizModel model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(left: 8),
      width: w * 0.75,
      decoration: boxDecoration(radius: 16, showShadow: true, bgColor: context.cardColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
                child: CachedNetworkImage(
                    placeholder: placeholderWidgetFn() as Widget Function(BuildContext, String)?,
                    imageUrl: model.quizImage,
                    height: w * 0.4,
                    width: w * 0.75,
                    fit: BoxFit.cover),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    text(model.quizName, fontSize: textSizeMedium, isLongText: true, fontFamily: fontMedium, isCentered: false),
                    text(model.totalQuiz, textColor: quiz_textColorSecondary),
                  ],
                ),
                Icon(Icons.arrow_forward, color: quiz_textColorSecondary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
