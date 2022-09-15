import 'package:flutter/material.dart';
import 'package:tsw_disenos_app/pages/pages_export.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Diseno de Layouts',
        debugShowCheckedModeBanner: false,
        initialRoute: 'view',
        routes: {
          'inicio': ( _ ) => const HomePage(),
          'view'  : ( _ ) => const ViewPage(),
          'table' : ( _ ) => const TablePage(),

        });
  }
}

// URL de FH
// https://www.udemy.com/course/flutter-ios-android-fernando-herrera/learn/lecture/14505828?start=15#announcements
// https://github.com/Klerith/flutter-disenos-seccion8/blob/main/lib/screens/scroll_design.dart
//https://www.digitalocean.com/community/tutorials/flutter-flutter-gradient#introduction