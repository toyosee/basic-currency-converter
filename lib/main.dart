import 'package:currency_converter/pages/currency_converter_material_page.dart';
import 'package:flutter/material.dart';
// import 'package:currency_converter/pages/currency_converter_cupertino_page.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

// Creating a widget
// Types of Widgets: StatelessWidget, StatefulWidget, InheritedWidget
class MyApp extends StatelessWidget {
  // Creating a constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage()
    );
  }
}

// class MyCupertinoApp extends StatelessWidget {
//   const MyCupertinoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//       return const CupertinoApp(
//       home: CurrencyConverterCupertinoPage()
//     );
//   }
// }
