
import 'package:disenios2/src/pages/launcher_page.dart';
import 'package:disenios2/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(ChangeNotifierProvider(
  
  create: (_)=> new ThemeChanger(2),

  child: MyApp()));
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme:currentTheme,
      title: 'Diseños 2',
       home: LauncherPage()
    );
  }
}