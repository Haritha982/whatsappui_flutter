import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/components/chat%20tile.dart';
import 'package:whatsappui/components/divider.dart';
import 'package:whatsappui/screens/callsscreen.dart';
import 'package:whatsappui/screens/statusscreen.dart';
import 'package:whatsappui/whatsapp data.dart';

Data data=Data();

class ChatScreen extends StatelessWidget {
  static const String id='chatscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search,
            size: 28,),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(CupertinoIcons.ellipsis_vertical,
            size: 26,
            ),
          ),
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff075e54),
          leading: Container(
            child: Icon(Icons.camera_alt_rounded,
            color: Colors.white.withOpacity(0.5),
            size: 28,
            ),
          ),
          actions: [
            Container(
              width: 115,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 5,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8,),
                    child: GestureDetector(
                      onTap: (){
                      },
                      child: Text(
                        'CHATS',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 115,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.transparent,
                    width: 5,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8,),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, StatusScreen.id);
                      },
                      child: Text(
                        'STATUS',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 115,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.transparent,
                    width: 5,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8,),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, CallScreen.id);
                      },
                      child: Text(
                        'CALLS',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.message),
            backgroundColor: Color(0xff25D366),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context,index)=>ChatTile(
              name: data.chat.values.elementAt(index).elementAt(0),
              img: data.chat.values.elementAt(index).elementAt(1),
              message: data.chat.values.elementAt(index).elementAt(2),
              time: data.chat.values.elementAt(index).elementAt(3),
          ),
          separatorBuilder: (context,index)=>Seperator(),
          itemCount: data.chat.length),
    );
  }
}
