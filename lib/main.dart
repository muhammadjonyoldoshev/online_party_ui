import 'package:flutter/material.dart';
import 'package:online_party_ui/pages/home_page.dart';
void main(){
  runApp(const PartyApp());
}
class PartyApp extends StatelessWidget {
  const PartyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
