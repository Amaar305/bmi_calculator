import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

// import 'package:rename/rename.dart';
MaterialColor myGreen = const MaterialColor(
  0xFF0A0E21,
  {
    50: Color(0xFF0A0E21),
    100: Color(0xFF0A0E21),
    200: Color(0xFF0A0E21),
    300: Color(0xFF0A0E21),
    400: Color(0xFF0A0E21),
    500: Color(0xFF0A0E21),
    600: Color(0xFF0A0E21),
    700: Color(0xFF0A0E21),
    800: Color(0xFF0A0E21),
    900: Color(0xFF0A0E21)
  },
);

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        // ignore: deprecated_member_use
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: myGreen)
            .copyWith(secondary: Colors.purple),
      ),
      home: const InputPage(),
    );
  }
}
