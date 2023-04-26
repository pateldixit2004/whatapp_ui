import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatapp_ui/screen/provider/provioderData.dart';

class callScreen extends StatefulWidget {
  const callScreen({Key? key}) : super(key: key);

  @override
  State<callScreen> createState() => _callScreenState();
}

class _callScreenState extends State<callScreen> {
  data_Provider? providerF;
  data_Provider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<data_Provider>(context, listen: false);
    providerT = Provider.of<data_Provider>(context, listen: true);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal.shade500,
        child: Icon(Icons.add_ic_call_rounded),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Create call link",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Share a link for your WhatApp calll",
              style: TextStyle(color: Colors.black26),
            ),
            leading: Transform.rotate(
              angle: pi / 1.4,
              child: CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 25,
                child: Icon(
                  Icons.link_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Recent",
              style: TextStyle(color: Colors.black26),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: providerF!.callList.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) =>
                  call(
                      name: providerF!.callList[index].name,
                      path: providerF!.callList[index].img,
                      time: providerF!.callList[index].time,
                      cach:providerF!.callList[index].cach,
                      vach: providerF!.callList[index].vach,
                  )

            ),
          ),

        ],
      ),
    );
  }

  Widget call({String? path, String? name, String? time, Icon? cach,Icon? vach}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage("$path"),
      ),
      title: Text(
        "$name",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          cach!,
          Text(
            "$time",
            style: TextStyle(color: Colors.black26),
          )
        ],
      ),
      trailing: vach!,
    );
  }
}
