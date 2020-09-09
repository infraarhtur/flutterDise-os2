
import 'package:disenios2/src/models/layaut_model.dart';
import 'package:disenios2/src/pages/launcher_page.dart';
import 'package:disenios2/src/pages/launcher_tablet_page.dart';
import 'package:disenios2/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 


void main() => runApp( MultiProvider(
  providers:[
   ChangeNotifierProvider<ThemeChanger>(create: (_)=> new ThemeChanger(2)) ,
   ChangeNotifierProvider<LayoutModel>(create: (_)=> new LayoutModel()) 
  ], child: MyApp(),
  
  ),
 

);

// void main() => runApp(ChangeNotifierProvider(
  
//   create: (_)=> new ThemeChanger(2),

//   child: MyApp()));
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme:currentTheme,
      title: 'Diseños 2',
      home: OrientationBuilder(
        builder: (BuildContext context , Orientation orientation){
          final screenSize = MediaQuery.of(context).size;
          
print(screenSize.width);
print(orientation);
          if(screenSize.width > 500){
            return LauncherTabletPage();
          }else{
            return LauncherPage();
          }
        } 
        )
      //  home: LauncherPage()
    );
  }
}