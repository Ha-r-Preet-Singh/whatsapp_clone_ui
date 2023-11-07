import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/ChatPage.dart';
import 'package:whatsapp_clone/pages/HomePage.dart';
import 'package:whatsapp_clone/pages/SettingPage.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xff075E55)
        ),
        //To transparent the bottom sheet on chat page you will see.
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor:  Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/" : (context)  => HomePage(),
        "settingPage" : (context)  => SettingPage(),
        "chatPage" : (context)  => ChatPage(),
      },
    );
  }
}
