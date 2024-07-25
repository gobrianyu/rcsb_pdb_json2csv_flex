import 'dart:io';
import 'package:flutter/material.dart';
import 'package:rcsb_pdb_json2csv_flex/views/big_boss.dart';
import 'package:window_manager/window_manager.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  if (Platform.isWindows) {
    WindowManager.instance.setMaximizable(false);
    WindowManager.instance.setMinimumSize(const Size(1300, 800));
    WindowManager.instance.setMaximumSize(const Size(1300, 800));
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: Color.fromARGB(105, 121, 147, 168),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const BigBoss()
    );
  }
}
