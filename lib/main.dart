import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget cstmtitl=const Text('App Bar');
  Icon cstmicn=const Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 115, 173, 168),
          title: cstmtitl,
          leading: const Icon(Icons.menu),        
          actions: [       
          IconButton(onPressed: (){
            setState(() {
              if(cstmicn.icon==Icons.search)
              {
                   cstmicn=const Icon(Icons.cancel);
                   cstmtitl=const TextField(
                    cursorColor: Colors.green,
                     textInputAction: TextInputAction.go,
                     style: TextStyle(color: Colors.white,fontSize: 20,decoration: TextDecoration.none),                    
                     keyboardType: TextInputType.text,
                     autofocus: true,
                     decoration: InputDecoration(                       
                       border: InputBorder.none,
                       hintText: "Search Item"
                     ),
                   );
              }
              else{
                cstmtitl=const Text('App Bar');
                 cstmicn=const Icon(Icons.search);
              }
              
            });
          },icon: cstmicn),
           IconButton(onPressed: (){},icon: const Icon(Icons.more_vert)),
        ]),
      ),
    );
  }
}
