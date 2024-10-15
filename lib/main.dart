import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/contoler/provider/personal_info_provider/personal_info.dart';
import 'package:kerigo_driver_app/contoler/provider/profile_editing_provider.dart';
import 'package:kerigo_driver_app/view/location_permission_screen/location_permisssion_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PersonalInfoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileEditingProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: HexColor('#F7F7F7'),
          fontFamily: 'Satoshi-Medium',
          brightness: Brightness.light,
          textTheme: const TextTheme(
              bodyLarge: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Satoshi'),
              bodyMedium: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Satoshi-Medium'),
              bodySmall: TextStyle(
                  fontFamily: 'Satoshi-Light',
                  color: Colors.black,
                  fontWeight: FontWeight.normal)),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
                fontFamily: 'Satoshi',
                color: Colors.white,
                fontWeight: FontWeight.w700),
            bodyMedium: TextStyle(
                fontFamily: 'Satoshi-Medium',
                color: Colors.white,
                fontWeight: FontWeight.w600),
            bodySmall: TextStyle(
                fontFamily: 'Satoshi-Light',
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
        ),
        themeMode: ThemeMode.system,
        home: LocationPermissionScreen(),
      ),
    );
  }
}
