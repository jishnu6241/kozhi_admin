import 'package:flutter/material.dart';
import 'package:kozhi_admin/features/home/home.dart';
import 'package:kozhi_admin/theme/light_theme.dart';
import 'package:provider/provider.dart';
import 'theme/dark_theme.dart';
import 'theme/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ThemeProvider>(context).themeMode,
      theme: lightMode,
      darkTheme: darkMode,
      home: Home(),
    );
  }
}
