import 'package:bmi_calculator_app/widget/bottom_button.dart';
import 'package:bmi_calculator_app/calculate.dart';
import 'package:bmi_calculator_app/widget/gender_view.dart';
import 'package:bmi_calculator_app/widget/global_app_bar.dart';
import 'package:bmi_calculator_app/widget/height_box.dart';
import 'package:bmi_calculator_app/pages/result_page.dart';
import 'package:bmi_calculator_app/widget/weight_and_age_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(title: 'BMI CALCULATOR'),
      body: Container(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const GenderView(),
            const SizedBox(
              height: 18,
            ),
            HeightBox(
              height: height,
              onSlide: (v) {
                height = v;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 18,
            ),
            WeightAndAgeView(
                weight: weight,
                age: age,
                onDecWeight: (){
                  setState(() {
                    weight--;
                  });
                },
                onIncWeight: (){
                  setState(() {
                    weight++;
                  });
                },
                onDecAge: (){
                  setState(() {
                    age--;
                  });
                },
                onIncAge: (){
                  setState(() {
                    age++;
                  });
                }
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomButton(
        title: 'CALCULATE',
        onTap: () {
          Calculate calc = Calculate(height: height, weight: weight);

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultPage(
                        bmiResults: calc.calculateBmi(),
                        resultText: calc.getResult(),
                        getAdvise: calc.getAdvise(),
                        textColor: calc.getTextColor(),
                      )));
        },
      ),
    );
  }
}
