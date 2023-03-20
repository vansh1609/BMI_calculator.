import 'package:bmicalculator/calculate.dart';
import 'package:bmicalculator/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activecardcolour = Color(0xFF1D1E33);
const inactivecardcolour = Color(0xFF111328);
String bmi='',res='',review='';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Color malecard = inactivecardcolour;
  Color femalecard = inactivecardcolour;
  int height = 180;
  int weight = 50;
  int age = 18;

  void update(int gender) {
    if (gender == 1) {
      if (malecard == inactivecardcolour) {
        malecard = activecardcolour;
        femalecard = inactivecardcolour;
      } else
        malecard = inactivecardcolour;
    } else {
      if (femalecard == inactivecardcolour) {
        femalecard = activecardcolour;
        malecard = inactivecardcolour;
      } else
        femalecard = inactivecardcolour;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    update(1);
                  });
                },
                child: ReusableCard(
                  colour: malecard,
                  childwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'MALE',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                      )
                    ],
                  ),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    update(2);
                  });
                },
                child: ReusableCard(
                  colour: femalecard,
                  childwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 80,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'FEMALE',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                      )
                    ],
                  ),
                ),
              )),
            ],
          )),
          Expanded(
              child: ReusableCard(
            colour: Color(0xFF1D1E33),
            childwidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'HEIGHT',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'cm',
                      style:
                          TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xFF8D8E98),
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newval) {
                        setState(() {
                          height = newval.round();
                        });
                      }),
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                colour: Color(0xFF1D1E33),
                childwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style:
                          TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                    ),
                    Text(
                      weight.toString(),
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                            backgroundColor: Color(0xFF4C4E5C),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        FloatingActionButton(
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                            backgroundColor: Color(0xFF4C4E5C),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            }),
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: ReusableCard(
                colour: Color(0xFF1D1E33),
                childwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style:
                          TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                    ),
                    Text(
                      age.toString(),
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                            backgroundColor: Color(0xFF4C4E5C),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        FloatingActionButton(
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                            backgroundColor: Color(0xFF4C4E5C),
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            }),
                      ],
                    )
                  ],
                ),
              )),
            ],
          )),
          GestureDetector(
            onTap: (){
              calculate calc=calculate(height: height,weight: weight);
              bmi=calc.calculatebmi();
              res=calc.getresult();
              review=calc.getreview();
              Navigator.push(context, MaterialPageRoute(builder:(context)=>result()));
            },
            child: Container(

              child: Center(
                child: Text('CALCULATE',
                style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
              ),
              width: double.infinity,
              color: Color(0xFFEB1555),
              height: 80.0,
              margin: EdgeInsets.only(top: 10.0),
            ),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  @override
  ReusableCard({required this.colour, required this.childwidget});
  Color colour;
  Widget childwidget;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: childwidget,
      margin: EdgeInsets.all(15.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: colour),
    );
    throw UnimplementedError();
  }
}
