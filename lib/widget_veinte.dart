import 'package:flutter/material.dart';

class Widgetveinte extends StatefulWidget {
  const Widgetveinte({Key? key}) : super(key: key);

  @override
  State<Widgetveinte> createState() => _WidgetveinteState();
}

class _WidgetveinteState extends State<Widgetveinte> {
  double _size = 250; // Tamaño inicial más grande
  final Color _appBarColor = const Color(0xffc82663);
  final Color _backgroundColor = Colors.lightBlue[100]!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _appBarColor,
        title: const Text(
          'Widget 20 - Animación Esquina',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        color: _backgroundColor,
        child: Stack(
          children: [
            Positioned(
              // Pegado perfecto a la esquina
              left: 0, // Sin margen izquierdo
              top: 0, // Sin margen superior
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _size = _size == 250
                        ? 100
                        : 250; // Cambio de tamaño más notable
                  });
                },
                child: Container(
                  color: Colors.white,
                  child: AnimatedSize(
                    curve: Curves.easeIn,
                    duration: const Duration(seconds: 1),
                    child: FlutterLogo(size: _size),
                  ),
                ),
              ),
            ),
            // Botón opcional si lo quieres agregar después
          ],
        ),
      ),
    );
  }
}
