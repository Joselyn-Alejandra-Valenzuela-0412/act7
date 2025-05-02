import 'package:flutter/material.dart';

class Widgetdiecisiete extends StatefulWidget {
  const Widgetdiecisiete({Key? key}) : super(key: key);

  @override
  WidgetdiecisieteState createState() => WidgetdiecisieteState();
}

class WidgetdiecisieteState extends State<Widgetdiecisiete> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffc82663),
        title: const Text(
          'Widget 17 - Elevación',
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
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              child: const SizedBox(
                height: 150.0, // Aumenté ligeramente el tamaño
                width: 150.0,
                child: Icon(
                  Icons.android_outlined,
                  size: 60, // Icono más grande
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
              child: const Text('Alternar Elevación'),
            ),
            const SizedBox(height: 20),
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
