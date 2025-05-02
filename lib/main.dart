import 'package:flutter/material.dart';
import 'principal.dart';
import 'widget_doce.dart';
import 'widget_trece.dart';
import 'widget_catorce.dart';
import 'widget_quince.dart';
import 'widget_dieciseis.dart';
import 'widget_diecisiete.dart';
import 'widget_dieciocho.dart';
import 'widget_diecinueve.dart';
import 'widget_veinte.dart';
import 'widget_veintiuno.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre Widgets',
      routes: {
        '/': (context) => const Principal(), // Widget principal
        '/widget12': (context) => const WidgetDoce(),
        '/widget13': (context) => const Widgetrece(),
        '/widget14': (context) => const WidgetCatorce(),
        '/widget15': (context) => const Widgetquince(),
        '/widget16': (context) => const Widgetdieciseis(),
        '/widget17': (context) => const Widgetdiecisiete(),
        '/widget18': (context) => const Widgetdieciocho(),
        '/widget19': (context) => const Widgetdiecinueve(),
        '/widget20': (context) => const Widgetveinte(),
        '/widget21': (context) => const Widgetveintiuno(),
      },
    );
  }
}
