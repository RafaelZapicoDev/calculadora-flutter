// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
        backgroundColor: Colors.amber,
        leading: Icon(Icons.control_point_sharp),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Resultado:$result",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "informe o valor 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "informe o valor 2"),
              controller: t2,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: somar,
                  child: Text("+"),
                  color: Colors.amber,
                ),
                MaterialButton(
                  onPressed: subtrair,
                  child: Text("-"),
                  color: Colors.amber,
                ),
                MaterialButton(
                  onPressed: multiplicar,
                  child: Text("x"),
                  color: Colors.amber,
                ),
                MaterialButton(
                  onPressed: dividir,
                  child: Text("/"),
                  color: Colors.amber,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  var num1;
  var num2;
  var result = 0;

  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");

  void somar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 - num2;
    });
  }

  void multiplicar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 * num2;
    });
  }

  void dividir() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 / num2;
    });
  }
}
