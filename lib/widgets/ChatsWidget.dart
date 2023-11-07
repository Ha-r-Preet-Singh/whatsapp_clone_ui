import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for(int i=1; i<4;i++)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "chatPage");
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profile2.jpg",
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Manpreet",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold
                            ),

                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Hi, Suman , how are you?",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500,
                            ),

                          ),

                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text("12:15",style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff0FCE5E),
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        SizedBox(height: 6,),
                        Container(
                          alignment: Alignment.center,
                          width: 27,
                          height: 27,
                          decoration: BoxDecoration(
                            color: Color(0xff0FCE5E),
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Text(

                            "23",style: TextStyle(fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16,
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
