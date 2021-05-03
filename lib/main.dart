import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/uiprovider/onboardprovider.dart';
import 'package:papi_kost/core/viewmodel/uiprovider/signupprovider.dart';
import 'package:papi_kost/core/viewmodel/utilsprovider/deviceinfoprovider.dart';
import 'package:papi_kost/core/viewmodel/utilsprovider/locationuserprovider.dart';
import 'package:papi_kost/ui/router/routergenerator.dart';
import 'package:provider/provider.dart';
import 'core/viewmodel/uiprovider/homeprovider.dart';
import 'core/viewmodel/uiprovider/iconhomeprovider/iconprovider.dart';
import 'core/viewmodel/uiprovider/themeprovider.dart';

void main() {
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
        ChangeNotifierProvider(create: (context) => SignUpProvider()),
        ChangeNotifierProvider(create: (context) => DeviceInfoCheck()),
        ChangeNotifierProvider(create: (context) => LocationUser()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
        ChangeNotifierProvider(create: (context) => IconProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: true,
          theme: themeProvider.theme,
          initialRoute: RouterGenerator.routeHome,
          onGenerateRoute: RouterGenerator.generateRoute,
        );
      }),
    );
  }
}
