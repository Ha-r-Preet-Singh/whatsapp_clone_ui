import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/CallsWidget.dart';
import 'package:whatsapp_clone/widgets/ChatsWidget.dart';
import 'package:whatsapp_clone/widgets/StatusWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            //custom height to app bar
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              elevation: 0,
              title: Padding(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                child: Text(
                  "WhatsApp",
                  style: TextStyle(fontSize: 21),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(top: 12, right: 15),
                  child: Icon(
                    Icons.search,
                    size: 28,
                  ),
                ),
                PopupMenuButton(
                  onSelected: (selected) {
                    //if someone clicks on value number 5 means click on settings
                    if (selected == 5) {
                      Navigator.pushNamed(context, "settingPage");
                    }
                  },
                  elevation: 10,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text(
                        "New Group",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text(
                        "New broadcast",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text(
                        "Linked devices",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: Text(
                        "Started messages",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 5,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Color(0xff075E55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    //tab 1
                    Container(
                      width: 24,
                      child: Tab(
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                    //tab 2
                    Container(
                      width: 90,
                      child: Tab(
                        child: Row(
                          children: [
                            Text("CHATS"),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "10",
                                style: TextStyle(
                                  color: Color(0xff075E55),
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // tab 3
                    Container(
                      width: 95,
                      child: Tab(
                        child: Text("STATUS"),
                      ),
                    ),
                    // tab4
                    Container(
                      width: 95,
                      child: Tab(
                        child: Text("CALLS"),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: TabBarView(
                  children: [
                    // tab 1 Camera
                    Container(color: Colors.black),
                    // tab 2 chatsWidgets
                    ChatsWidget(),
                    // tab 3 StatusWidget
                    StatusWidget(),
                    // tab 4
                    CallsWidget(),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color(0xff075E55),
            child: Icon(Icons.message),
          ),
        ));
  }
}
