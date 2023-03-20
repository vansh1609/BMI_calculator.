import 'dart:math';

class calculate{
  int height;
  int weight;
  double _bmi=0;
  calculate({required this.height,required this.weight});
  String calculatebmi(){
    _bmi=weight/(pow(height/100, 2));
    return _bmi.toStringAsFixed(1);
  }
  String getresult()
  {
    if(_bmi>=25)
      return 'OVERWEIGHT';
    else if(_bmi>18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }
  String getreview()
  {
    if(_bmi>=25)
      return 'You have higher than normal body weight. TRy to exercise more.';
    else if(_bmi>18.5)
      return 'You have normal body weight. Good Job!';
    else
      return 'You have lower than normal body weight. You can eat a bit more!';
  }
}