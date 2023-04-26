import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatapp_ui/screen/provider/provioderData.dart';

class statusScreen extends StatefulWidget {
  const statusScreen({Key? key}) : super(key: key);

  @override
  State<statusScreen> createState() => _statusScreenState();
}

class _statusScreenState extends State<statusScreen> {
  data_Provider? providerF;
  data_Provider? providerT;
  int? index;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<data_Provider>(context, listen: false);
    providerT = Provider.of<data_Provider>(context, listen: true);
    return Scaffold(
      // body:Stack(
      //   alignment: Alignment(0.88,0.67),
      //
      //   children: [
      //     Column(
      //       children: [
      //         ListTile(
      //           leading: Stack(
      //             alignment: Alignment(1.7,1.1),
      //
      //             children: [
      //               CircleAvatar(backgroundImage: AssetImage("assets/image/mm1.jpg"),radius: 25,),
      //               Container(
      //                 height: 27,
      //                 width: 27,
      //                 decoration: BoxDecoration(
      //                   color: Colors.teal,shape: BoxShape.circle,
      //                   border: Border.all(color: Colors.white,width: 2)
      //                 ),
      //                 child: Icon(Icons.add,color: Colors.white,),
      //               )
      //             ],
      //           ),
      //         )
      //       ],
      //     )
      //   ],
      // )
      body: Stack(
        alignment: Alignment(0.88, 0.67),
        children: [
          Column(
            children: [
              ListTile(
                leading: Stack(
                  alignment: Alignment(1.7, 1.1),
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/image/dixit.jpg", ),
                      radius: 25,
                    ),
                    Container(
                      height: 27,
                      width: 27,
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
                title: Text(
                  "My status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Tap to add status update",
                  style: TextStyle(color: Colors.black26),
                ),
              ),
              ListTile(
                title: Text("Recent update"),
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) => statusview(
                   name: providerF!.statusList[index].name,path:  providerF!.statusList[index].img,time: providerF!.statusList[index].time,
              ),itemCount: providerF!.statusList.length,)
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget statusview({String? name, String? path,String? time}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage("$path"),
      ),
      title: Text(
        "$name",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Text("$time",style: TextStyle(color: Colors.black26),),
    );
  }
}
