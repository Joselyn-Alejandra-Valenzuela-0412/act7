import 'package:flutter/material.dart';

class Widgetdiecinueve extends StatefulWidget {
  const Widgetdiecinueve({Key? key}) : super(key: key);

  @override
  State<Widgetdiecinueve> createState() => WidgetdiecinueveState();
}

class WidgetdiecinueveState extends State<Widgetdiecinueve> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color(0xffc82663), // Mismo color que el primer ejemplo
        title: const Text(
          'Widget 19 ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Rotar Logo'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .orangeAccent, // Cambiado de 'primary' a 'backgroundColor'
              ),
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
            ),
          ],
        ),
      ),
    );
  }
}
