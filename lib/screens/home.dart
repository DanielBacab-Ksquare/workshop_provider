import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controllers/theme_mode_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexWidgets = 0;

  @override
  Widget build(BuildContext context) {
    final modeThemeProvider = Provider.of<ThemeModeProvider>(context);

    if(modeThemeProvider.stateDay){
      indexWidgets = 0;
    }else{
      indexWidgets = 1;
    }

    final List<Text> _titleWidget = <Text>[
      Text(
        "Day",
        style: TextStyle(color: modeThemeProvider.textColor),
      ),
      Text(
        "Night",
        style: TextStyle(color: modeThemeProvider.textColor),
      ),
    ];

    final List<Widget> _greetingWidget = <Widget>[
      Center(
          child: Text(
        "Good Day",
        style: TextStyle(color: modeThemeProvider.textColor, fontSize: 25, fontWeight: FontWeight.w700),
      )),
      Center(
          child: Text(
        "Good Evening",
        style: TextStyle(color: modeThemeProvider.textColor,fontSize: 25, fontWeight: FontWeight.w700),
      )),
    ];

    return Scaffold(
      appBar: AppBar(
        //THIS VARIABLE WILL CHANGE IT STATE
        title: _titleWidget.elementAt(indexWidgets),
        centerTitle: true,
        backgroundColor: modeThemeProvider.primaryColor,
      ),
      body: Container(
        //THIS VARIABLE WILL CHANGE IT STATE
        color: modeThemeProvider.backgroundColor,
        child: _greetingWidget.elementAt(indexWidgets),
      ),
      floatingActionButton: FloatingActionButton(
          //THIS VARIABLE WILL CHANGE IT STATE
          backgroundColor: modeThemeProvider.primaryColor,
          //THIS VARIABLE WILL CHANGE IT STATE
          child: modeThemeProvider.iconFloatingElevation,
          onPressed: () {
            //HERE YOU WOULD CALL YOUR INSTANCE.YOURFUNCTION
            // DONT FORGET TO ADD THE IF STATEMENT
            if (modeThemeProvider.stateDay) {
              modeThemeProvider.changeThemeToNight();
            } else {
              modeThemeProvider.changeThemeToDay();
            }
          }),
    );
  }
}
