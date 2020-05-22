import 'package:bankalkalemat/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import 'Filterparameters.dart';

void main() => runApp(
      ChangeNotifierProvider<Filter>(create: (_) => Filter(), child: App()),
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
        primaryColor: Colors.cyan[900],
      ),
      home: NeumorphicTheme(
          usedTheme: UsedTheme.LIGHT,
          theme: NeumorphicThemeData(
            defaultTextColor: Color(0xFF060709),
            baseColor: Color(0xFFF6F5F0),
            accentColor: Color(0xFF04C67C),
            intensity: 0.5,
            lightSource: LightSource.topLeft,
            depth: 4,
            shadowDarkColor: Color(0xFF060709),
          ),
          darkTheme: NeumorphicThemeData(
            defaultTextColor: Color(0xFFBDBEBF),
            accentColor: Color(0xFF2D544A),
            baseColor: Color(0xFF30353A),
            intensity: 0.5,
            lightSource: LightSource.topLeft,
            depth: 4,
          ),
          child: HomePage(title: 'الكلمات الثلاثية')),
    );
  }
}
