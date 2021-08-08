import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  BmiResult({
    @required this.result,
    @required this.isMale,
    @required this.age,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 17, 10, 48),
      ),
      backgroundColor: Color.fromARGB(240, 17, 10, 48),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Gender :  ${isMale ? 'MALE':'FEMALE'}",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              SizedBox(height: 10,),
              Text(
                "Result : ${result}",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              SizedBox(height: 10,),
              buildwightStatus(result),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 67, 61, 94),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }

  Text buildwightStatus(int result) {
    String textresult;
    if(result<18){
      textresult = "UnderWeight";
    }
    else if(result>=18 && result<=25){
      textresult = "Normal";
    }
    else if(result>=26 && result<=30){
      textresult = "OverWeight";
    }
    else if(result>30){
      textresult = "Obese";
    }
    return Text(
              "Weight Status : $textresult",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),
            );
  }


}
