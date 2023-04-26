import 'package:flutter/material.dart';
import 'package:whatapp_ui/screen/view/callview.dart';
import 'package:whatapp_ui/screen/view/chatsview.dart';
import 'package:whatapp_ui/screen/view/statusview.dart';

class DeshScreen extends StatefulWidget {
  const DeshScreen({Key? key}) : super(key: key);

  @override
  State<DeshScreen> createState() => _DeshScreenState();
}

class _DeshScreenState extends State<DeshScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Whatsapp"),
            backgroundColor: Colors.green.shade900,
            actions: [
              Icon(Icons.search_rounded),
              Icon(Icons.more_vert),
            ],
            bottom: TabBar( indicatorColor: Colors.white,tabs: [
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ],)
          ),
          body: const TabBarView(
            children: [
              ChatScreen(),
              statusScreen(),
              callScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
