import 'package:flutter/material.dart';

class WidgetDoce extends StatefulWidget {
  const WidgetDoce({Key? key}) : super(key: key);

  @override
  State<WidgetDoce> createState() => _WidgetDoceState();
}

class _WidgetDoceState extends State<WidgetDoce> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffc82663),
        title: const Text(
          'Widget 12 ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        // Widget Center añadido aquí
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_isPlay == false) {
                    _controller.forward();
                    _isPlay = true;
                  } else {
                    _controller.reverse();
                    _isPlay = false;
                  }
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: _controller,
                size: 100,
                color: const Color(0xffc82663),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffc82663),
                minimumSize: const Size(120, 45), // Tamaño ligeramente reducido
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Bordes un poco más redondeados
                ),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Volver',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16, // Tamaño de fuente reducido
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
