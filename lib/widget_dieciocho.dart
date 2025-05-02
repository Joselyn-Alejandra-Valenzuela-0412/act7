import 'package:flutter/material.dart';

class Widgetdieciocho extends StatefulWidget {
  const Widgetdieciocho({Key? key}) : super(key: key);

  @override
  State<Widgetdieciocho> createState() => _WidgetdieciochoState();
}

class _WidgetdieciochoState extends State<Widgetdieciocho> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffc82663),
        title: const Text(
          'Widget 18 - Animación Ovalada',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          AnimatedPositioned(
            left: 20,
            width: selected
                ? MediaQuery.of(context).size.width * 0.7
                : 60.0, // Más delgada (60 en lugar de 80)
            height: selected ? 60.0 : 220.0, // Más alta (220 en lugar de 200)
            top: selected
                ? 10
                : MediaQuery.of(context).size.height *
                    0.25, // Más arriba (25% en lugar de 30%)
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(
                    selected ? 10 : 60,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
