import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallTile extends StatelessWidget {
  final String name;
  final String img;
  final int vid;
  final bool isMissed;
  final bool inComing;
  final String time;
  CallTile({
    required this.name,
    required this.img,
    required this.vid,
    required this.isMissed,
    required this.inComing,
    required this.time,
});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: img!=null?
      CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(img),
      ):Icon(
        Icons.account_circle,
        size: 55,
        color: Colors.grey.shade500,
      ),
      title: Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 22,
        ),
      ),
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            inComing?CupertinoIcons.arrow_down_left:
          CupertinoIcons.arrow_up_right,
          color: isMissed?Colors.red:Color(0xff25d366),
          size: 20,),
          Text(
            time,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey.shade500,
          ),
          ),
        ],
      ),
      trailing: Icon(
      vid==0?Icons.call:Icons.videocam_rounded,
      size: 29,
      color: Colors.teal,
      ),
    );
  }
}
