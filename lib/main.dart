import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pizza/helpers/headers.dart';
import 'package:pizza/services/manage_data.dart';
import 'package:pizza/services/maps.dart';
import 'package:pizza/views/splashScreen.dart';
import 'package:provider/provider.dart';

import 'helpers/footer.dart';
import 'helpers/middle.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(value: Headers()),
      ChangeNotifierProvider.value(value: MiddleHelpers()),
      ChangeNotifierProvider.value(value: ManageData()),
      ChangeNotifierProvider.value(value: Footers()),
      ChangeNotifierProvider.value(value: GenerateMaps()),
    ],
    child: MaterialApp(
      title: 'Pizzato',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Figno',
       primarySwatch: Colors.red,
       primaryColor: Colors.redAccent,
       visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    ),
    );
  }
}