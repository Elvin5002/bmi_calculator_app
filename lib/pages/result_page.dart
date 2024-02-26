import 'package:bmi_calculator_app/widget/bottom_button.dart';
import 'package:bmi_calculator_app/widget/global_app_bar.dart';
import 'package:bmi_calculator_app/widget/result_view.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.bmiResults,
      required this.resultText,
      required this.textColor, required this.getAdvise})
      : super(key: key);

  final String bmiResults;
  final String resultText;
  final String getAdvise;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(title: 'BMI CALCULATOR'),
      backgroundColor: Color(0xff0a0e21),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResultView(
            bmiResults: bmiResults,
            resultText: resultText,
            textColor: textColor,
            getAdvise: getAdvise,
          ),
          const SizedBox(
            height: 10,
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
