import 'package:bmi_app_2/constants.dart';
import 'package:flutter/cupertino.dart';
import 'file:///D:/Developt/Udemy/Flutter/Application/Sendiri/bmi_app_2/lib/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'file:///D:/Developt/Udemy/Flutter/Application/Sendiri/bmi_app_2/lib/components/calculate_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //  title
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),

            //The Result
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Re-Calculate
            CalculateButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: "RE-CALCULATE"),
          ],
        ));
  }
}
