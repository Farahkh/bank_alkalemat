import 'package:bankalkalemat/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import 'Filterparameters.dart';

void main() => runApp(
      ChangeNotifierProvider<Filter>(create: (_)=> Filter(),child: App()),
    );

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: [const Locale('ar')],
      title: 'الكلمات الثلاثية',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        secondaryHeaderColor: Colors.white,
      ),
      home: NeumorphicTheme(
          usedTheme: UsedTheme.LIGHT,
          theme: NeumorphicThemeData(

            defaultTextColor: Color(0xFF30353A),
            baseColor: Color(0xFFF6F5F0),
            accentColor: Color(0xFFBC270E),
            intensity: 0.5,
            lightSource: LightSource(2.0, 1.0),
            depth: 5,
          ),
          darkTheme: NeumorphicThemeData(
            defaultTextColor: Color(0xFFBDBEBF),
            accentColor: Color(0xFFBC270E),
            baseColor: Color(0xFF30353A),
            intensity: 0.5,
            lightSource: LightSource(2.0, 1.0),
            depth: 5,
          ),
          child: HomePage(title: 'الكلمات الثلاثية')),
    );
  }
}
