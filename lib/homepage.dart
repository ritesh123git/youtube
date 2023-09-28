import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key})
  @override
  State<StatefulWidget> createState() {
   return _HomePage();
  }
}

class _HomePage extends State<HomePage>{
  @override
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SafeArea(child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient:LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:  [
                Colors.black12,
                Colors.black
              ]
            )
          ),
          child:const Text("This is the home page."),
        ),),
      ),
    )
  }
}