import 'package:flutter/material.dart';

class Mybutton extends  StatefulWidget{
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState  extends State<Mybutton>{

  String flutterText = "";
  int ix = 0;
  List<String>  collections = ['chinga','tu','madre'];
  
  void  onPressButton(){
    setState(() {
      flutterText=collections[ix];
      ix=ix<2?ix+1:0;
    });

  }

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(
                  fontSize: 40.0
                ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  ),
              RaisedButton(
                child: Text("Actualizar",style: TextStyle(color: Colors.white),),
                onPressed: onPressButton,
                color: Colors.blueAccent,
                )
            ],
          ),
        ),
      ),
    );
  }

}