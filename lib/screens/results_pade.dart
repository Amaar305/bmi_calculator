import 'package:bmi_calculator/widgets/button_container.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/widgets/mycontainer.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.resultInterpretation,
  });
  final String bmiResult;
  final String resultText;
  final String resultInterpretation;
  @override
  Widget build(BuildContext context) {
    // double result = 18.2;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
                alignment: Alignment.bottomLeft,
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Your Result',
                    style: kTiteTextStyle,
                  ),
                )),
          ),
          Expanded(
            flex: 5,
            child: MyContainer(
              colour: kActiveCardColour,
              onPress: () {
                // debugPrint('got it');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),

                  // SizedBox(
                  //   height: 30,
                  // ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  Text(
                    resultInterpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              // flex: 1,
              child: ButtomContainer(
                  child: const Center(
                    child: Text(
                      'RE-CALCULATE',
                      style: kLargeButtonTextStyle,
                    ),
                  ),
                  onChanged: () {
                    Navigator.pop(context);
                  })),
        ],
      ),
    );
  }
}
