import 'package:flutter/material.dart';

class Widgetveintiuno extends StatefulWidget {
  const Widgetveintiuno({Key? key}) : super(key: key);

  @override
  State<Widgetveintiuno> createState() => _WidgetveintiunoState();
}

class _WidgetveintiunoState extends State<Widgetveintiuno> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffc82663),
        title: const Text(
          'Widget 21 ',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(_count),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffc82663),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 8), // Más compacto
                shape: RoundedRectangleBorder(
                  // Forma más cuadrada
                  borderRadius: BorderRadius.circular(8.0), // Redondez reducida
                ),
                minimumSize: const Size(100, 36), // Tamaño más pequeño
              ),
              child: const Text(
                'add',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
