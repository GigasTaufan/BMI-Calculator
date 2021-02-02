import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app_2/constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 20.0,
      ),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 47.0,
        height: 47.0,
      ),
      shape: CircleBorder(),
      fillColor: kFloatingButtonColor,
    );
  }
}
