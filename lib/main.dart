import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:papi_kost/core/viewmodel/onboardprovider.dart';
import 'package:papi_kost/core/viewmodel/themeprovider.dart';
import 'package:papi_kost/ui/router/router_generator.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: true,
          theme: themeProvider.theme,
          initialRoute: RouterGenerator.routeOnboard,
          onGenerateRoute: RouterGenerator.generateRoute,
        );
      }),
    );
  }
}
