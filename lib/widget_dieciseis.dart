import 'package:flutter/material.dart';

class Widgetdieciseis extends StatefulWidget {
  const Widgetdieciseis({Key? key}) : super(key: key);

  @override
  State<Widgetdieciseis> createState() => _WidgetdieciseisState();
}

class _WidgetdieciseisState extends State<Widgetdieciseis> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffc82663),
        title: const Text(
          'Widget 15 - AnimatedPadding',
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .orangeAccent, // Corregido: cambiamos primary por backgroundColor
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                setState(() {
                  padValue = padValue == 0.0 ? 100.0 : 0.0;
                });
              },
              child: const Text('Cambiar Padding'),
            ),
            const SizedBox(height: 20),
            Text(
              'Padding actual: $padValue',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffc82663),
                minimumSize: const Size(150, 50),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Volver',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
