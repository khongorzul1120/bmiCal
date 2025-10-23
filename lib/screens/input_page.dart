import 'package:bmmi/utils.dart';
import 'package:bmmi/widgets/icon_content.dart';
import 'package:bmmi/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SingleChildScrollView(
      child:  IntrinsicHeight(child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(children: [
            Expanded(child: ReusableCard(
              onTap: () {
                setState(() {
                  
                });
              },
              color: kActiveCardColour,
              cardChild: IconContent(
                icon: FontAwesomeIcons.mars,
                text: 'MALE',
              ),
            )
            ),
            SizedBox(width: 10,),
             Expanded(child: ReusableCard(
              onTap: () {
                setState(() {
                  
                });
              },
              color: kActiveCardColour,
              cardChild: IconContent(
                icon: FontAwesomeIcons.venus,
                text: 'Female',
              ),
            )
            )
          ],)),
//Slider

SizedBox(height: 20,),
    Expanded(child: ReusableCard(
      color: kActiveCardColour,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('HEIGHT', style: kLabelStyle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('180', style: kLabelNumStyle,),
             const Text('cm',style: kLabelStyle),
          ],),
        SliderTheme(data: SliderTheme.of(context).copyWith(
            inactiveTickMarkColor: Color(0xFF8D8E98),
            activeTickMarkColor: Colors.white,
            thumbColor: Colors.red,
            overlayColor: const Color.fromARGB(255, 130, 47, 47),
            thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: 15.0),
            overlayShape: const RoundSliderOverlayShape(
            overlayRadius: 30.0),
        ), child: Slider(
           min: 90.0,
            max: 220.0,
          value: 100.2, onChanged: (double value){
        }))


        ],
      ),
    ))



        ],
      ),)
    )),);
  }
}