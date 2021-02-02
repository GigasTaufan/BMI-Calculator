import 'package:flutter/material.dart';
import 'package:bmi_app_2/constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kCalculateTextStyle,
          ),
        ),
      ),
    );
  }
}
