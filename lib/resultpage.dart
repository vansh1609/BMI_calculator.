import 'package:bmicalculator/InputPage.dart';
import 'package:flutter/material.dart';
class result extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        appBar: AppBar(title: Text('BMI CALCULATOR'),backgroundColor: Color(0xFF0A0E21),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container(
              child: Text('YOUR RESULT',
              style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),),
            )
            ),
            Expanded(flex:5,
                child: ReusableCard(
                  colour:  Color(0xFF1D1E33),
                  childwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(res,style: TextStyle(color: Color(0xFF24D876),fontSize: 22.0,fontWeight: FontWeight.bold),),
                      Text(bmi,style: TextStyle(fontSize: 100.0,fontWeight: FontWeight.bold),),
                      Text(review,style: TextStyle(fontSize: 22.0),),
                    ],
                  ),
                )
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(

                child: Center(
                  child: Text('RE-CALCULATE',
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

    throw UnimplementedError();
  }

}