import 'package:bankalkalemat/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      home: HomePage(title: 'الكلمات الثلاثية'),
    );
  }
}
