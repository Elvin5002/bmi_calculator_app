import 'package:bmi_calculator_app/widget/card_box.dart';
import 'package:bmi_calculator_app/widget/constants.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({Key? key, required this.bmiResults, required this.resultText, required this.textColor, required this.getAdvise}) : super(key: key);

  final String bmiResults;
  final String resultText;
  final String getAdvise;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: CardBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
                'Your Result',
                style: kTitleTextStyle,
            ),
            //const SizedBox(height: 15,),
            Text(
              resultText,
              style: TextStyle(color: textColor, fontSize: 25.0, fontWeight: FontWeight.w700),
            ),
            //const SizedBox(height: 15,),
            Text(
              bmiResults,
              style: kBmiTextStyle,
            ),
            //const SizedBox(height: 15,),
            Text(
              getAdvise,
              style: kBodyTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
