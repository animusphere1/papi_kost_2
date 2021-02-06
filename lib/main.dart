import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/uiprovider/onboardprovider.dart';
import 'package:papi_kost/core/viewmodel/uiprovider/signupprovider.dart';
import 'package:papi_kost/core/viewmodel/utilsprovider/deviceinfoprovider.dart';
import 'package:papi_kost/core/viewmodel/utilsprovider/locationuserprovider.dart';
import 'package:papi_kost/ui/router/router_generator.dart';
import 'package:provider/provider.dart';
import 'core/viewmodel/uiprovider/homeprovider.dart';
import 'core/viewmodel/uiprovider/themeprovider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var hasil = 0;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardProvider(101)),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => SignUpProvider()),
        ChangeNotifierProvider(create: (context) => DeviceInfoCheck()),
        ChangeNotifierProvider(create: (context) => LocationUser()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.theme,
          initialRoute: RouterGenerator.routeLogin,
          onGenerateRoute: RouterGenerator.generateRoute,
        );
      }),
    );
  }
}
