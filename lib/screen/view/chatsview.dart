import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatapp_ui/screen/provider/provioderData.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  data_Provider? providerF;
  data_Provider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF =Provider.of<data_Provider>(context,listen: false);
    providerT=Provider.of<data_Provider>(context,listen: true);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.teal.shade500,
          child: Icon(Icons.message_outlined),
        ),

        body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text("${providerF?.itemList[index].no}"),
            leading: CircleAvatar(radius: 25,backgroundImage: AssetImage("${providerF!.itemList[index].path}"),),
            subtitle: Text("${providerF!.itemList[index].msg}",style: TextStyle(color: Colors.grey),),
            trailing: Text("${providerF!.itemList[index].time}",style: TextStyle(color: Colors.grey,),),
          ),
        );

      },itemCount: providerF!.itemList.length,)
    );
  }
  Widget  show(int? no)
  {
    return ListView.builder(shrinkWrap: true,itemBuilder: (context, index) {
      return ListTile(
        title: Text("$no"),
        leading: CircleAvatar(radius: 25,backgroundImage: AssetImage("assets/image/mm1.jpg"),),
      );
    },scrollDirection: Axis.vertical,itemCount: 1,);
  }
}
