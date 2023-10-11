import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';


class  flip extends StatefulWidget {
  @override
  _flipState createState() => _flipState();
}

class _flipState extends State<flip> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlipCounter "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedFlipCounter(
              value: 1000 + _value,
            ),
            AnimatedFlipCounter(
              value: 1000 + _value,
              wholeDigits: 4,
              fractionDigits: 2,
              thousandSeparator: ',',
            ),
            AnimatedFlipCounter(
              value: _value,
              duration: Duration(seconds: 2),
              padding: EdgeInsets.symmetric(vertical: 8),
              curve: Curves.elasticOut,
              textStyle: TextStyle(fontSize: 60, color: (_value > 0 ? Colors.green : Colors.red)),
            ),
            AnimatedFlipCounter(
              value: _value,
              duration: Duration(seconds: 1),
              curve: Curves.bounceOut,
              wholeDigits: 4,
              fractionDigits: 2,
              textStyle: TextStyle(fontSize: 40, color: Colors.blue),
            ),
            AnimatedFlipCounter(
              value: _value,
              prefix: "Level ",
              padding: EdgeInsets.all(8),
              textStyle: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                letterSpacing: -8.0,
                color: Colors.yellow,
                shadows: [
                  BoxShadow(
                    color: Color.fromARGB(255, 255, 0, 0),
                    offset: Offset(2, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [0.09, 0.56, 1, 5, 34].map(_buildButton).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(num value) {
    return Column(
      children: [
        ElevatedButton(
          child: Text('+$value'),
          onPressed: () => setState(() => _value += value),
        ),
        ElevatedButton(
          child: Text('-$value'),
          onPressed: () => setState(() => _value -= value),
        ),
      ],
    );
  }
}