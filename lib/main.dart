import 'package:flutter/material.dart';
import 'package:whatsappui/screens/callsscreen.dart';
import 'package:whatsappui/screens/chatscreen.dart';
import 'package:whatsappui/screens/statusscreen.dart';

void main() {
  runApp(
       MaterialApp(
        initialRoute: ChatScreen.id,
        routes: {
           ChatScreen.id: (ctx)=>ChatScreen(),
           StatusScreen.id: (ctx)=>StatusScreen(),
           CallScreen.id: (ctx)=>CallScreen(),
      },
         debugShowCheckedModeBanner: false,
      ),
  );
}
