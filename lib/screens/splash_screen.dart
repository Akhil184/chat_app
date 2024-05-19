import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) => HomeScreen()
                )
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child:Image.asset('assets/images/images.jpeg',height: MediaQuery
            .of(context)
            .size
            .height)
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueAccent,
      appBar: AppBar(
        backgroundColor:Colors.purple,
        title: Text("Login Page",style:TextStyle(color:Colors.white),),centerTitle:true,),
      body:Center(

      child:Container(
        height:400,
      child:Card(

        elevation: 50,
        shadowColor: Colors.black,
        color: Colors.white,
      child:Center(
          child:TextField(

          )
      ),
      ),
      ),),
    );
  }
}




