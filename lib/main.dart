
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatapp_ui/screen/provider/provioderData.dart';
import 'package:whatapp_ui/screen/view/dash_view.dart';
void main()
{
  runApp(
   
       MultiProvider(
         providers: [
           ChangeNotifierProvider(create: (context) => data_Provider(),),
         ],
         child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context)=> DeshScreen(),
          },
      ),
       ),
    
  );
}
