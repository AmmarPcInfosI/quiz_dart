import 'dart:io';

import 'package:quiz_dart/quiz_dart.dart' as quiz_dart;

void main() {
  Map q1={
    'question':'what is the value of 3X3',
    'answer':'9',
    'mark':3

  };
  Map q2={
    'question':'what is the value of 9-6',
    'answer':'3',
    'mark':4

  };
  Map q3={
    'question':'You are 13(T/F)',
    'answer':'T',
    'mark':2
  };
  int i=1;
  String? ans='';
  String? ques="";
  double mark=0;
  List<Map> quizq=[q1,q2,q3];
  quizq.forEach((element) {
    ques=element['question'];
    print("$i:$ques");
    ans=stdin.readLineSync();
    if (ans==element['answer']){
      print("correct answer");
      mark+=(element['mark']);
    }
    else{
      print('wrong answer');
    }
    

    i++;
  });
  print('Your grade is : $mark');


}
