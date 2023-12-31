import 'package:flutter/material.dart';

class ChatBottomBar extends StatelessWidget {
  const ChatBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black38,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 19,
                    ),
                    decoration: InputDecoration(
                      hintText: "Message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(
                  Icons.attachment_outlined,
                  color: Colors.black38,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.black38,
                  size: 30,
                ),
              ],
            ),
          ),
          Container(padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff00887A),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(Icons.mic,size: 30,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
