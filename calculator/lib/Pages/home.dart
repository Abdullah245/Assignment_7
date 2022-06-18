import 'package:calculator_2/Constants/colorConst.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import '../Constants/textConst.dart';
import '../functions/func1.dart';
import '../functions/func2.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = "";
  Widget btn(var t, [Color clr = Colors.white]) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(ColorConst.color1),
        ),
        onPressed: () {
          setState(() {
            result = result + t;
          });
        },
        child: Text(
          t,
          style: TextStyle(
            fontSize: 30,
            color: clr,
          ),
        ),
      ),
    );
  }

  clear() {
    setState(() {
      result = "";
    });
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      result = eval.toString();
    });
  }

  del() {
    setState(() {
      result = result.substring(0, result.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ColorConst.color2),
      appBar: AppBar(
        title: Text(
          TextConst.title,
          style: TextStyle(color: Color(ColorConst.color3)),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerRight,
            child: Text(result,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Container(
            color: Color(ColorConst.color1),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    specialButton(
                      context,
                      TextConst.clear,
                      clear,
                      Color(ColorConst.color1),
                    ),
                    btn(TextConst.text7),
                    btn(TextConst.text4),
                    btn(TextConst.text1),
                    btn(TextConst.modulus),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    btn(TextConst.divide, Color(ColorConst.color3)),
                    btn(TextConst.text8),
                    btn(TextConst.text5),
                    btn(TextConst.text2),
                    btn(TextConst.text0),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    btn(TextConst.multiply, Color(ColorConst.color3)),
                    btn(TextConst.text9),
                    btn(TextConst.text6),
                    btn(TextConst.text3),
                    btn(TextConst.dot),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    specialButton(
                      context,
                      TextConst.del,
                      del,
                      Color(ColorConst.color1),
                    ),
                    btn(TextConst.sub, Color(ColorConst.color3)),
                    btn(TextConst.add, Color(ColorConst.color3)),
                    equalButton(context, TextConst.equal, output),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
