import 'package:flutter/material.dart';
import 'package:provider_class/screens/home.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controllers/theme_mode_provider.dart';

//HERE YOU WILL SETUP YOU MILTIPROVIDER FUNCTION
//DONT FORGET TO ADD YOUR PROVIDER CLASSES
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (context) => ThemeModeProvider()),
      ],
      
      child: MaterialApp(
         debugShowCheckedModeBanner: false
         ,title: 'Material App', home: HomeScreen()));
  }
}
