import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_app_2/reusable_card.dart';
import 'package:bmi_app_2/icon_content.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 130;
  int weight = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // FIRST SECTION --GENDER--
          Expanded(
            child: Row(
              children: [
                //  MALE CARD
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    // color: maleCardColour,
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childCard:
                        IconContent(icon: FontAwesomeIcons.mars, label: "MALE"),
                  ),
                ),

                //  FEMALE CARD
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    // color: femaleCardColour,
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childCard: IconContent(
                        icon: FontAwesomeIcons.venus, label: "FEMALE"),
                  ),
                ),
              ],
            ),
          ),

          // SECOND SECTION --HEIGHT--
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kLabelTextColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextColor,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kActiveSlider,
                      inactiveTrackColor: kInactiveSlider,
                      thumbColor: kActiveSlider,
                      overlayColor: kOverlaySlider,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: kMinHeight.toDouble(),
                      max: kMaxHeight.toDouble(),
                      divisions: 100,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // THIRD SECTION --WEIGHT--
          Expanded(
            child: Row(
              children: [
                //  WEIGHT
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),

          //  FOURTH SECTION -- CALCULATE BUTTON--
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: kBottomContainerColor,
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
