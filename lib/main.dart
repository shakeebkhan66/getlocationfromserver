import 'package:flutter/material.dart';
import 'package:getlocationfromserver/FinalGetLocationFolder/location_provider.dart';
import 'package:provider/provider.dart';

import 'get_user_location_server.dart';
import 'FinalGetLocationFolder/google_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LocationProvider>(create: (context)=> LocationProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetGoogleMapScreen(),
      ),
    );
  }
}
