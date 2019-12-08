import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
   State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  // declaring variables here as this is main class
  var number1=0, number2=0, output=0;

  // declare textedit controllers

  final TextEditingController textview1=TextEditingController(text: "0");
  final TextEditingController textview2=TextEditingController(text: "0");



  void sumofNum(){
setState(() {
  number1=int.parse(textview1.text);
  number2=int.parse(textview2.text);


  output=number1+number2;
});


  }

  // for suttract
  void minusofNum(){
    setState(() {
      number1=int.parse(textview1.text);
      number2=int.parse(textview2.text);


      output=number1-number2;
    });}
  // for multiply

  void mulofNum(){
    setState(() {
      number1=int.parse(textview1.text);
      number2=int.parse(textview2.text);


      output=number1*number2;
    });
  }

  // for devide

  void divideofNum(){
    setState(() {
      number1=int.parse(textview1.text);
      number2=int.parse(textview2.text);

      output=number1~/number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(                 // Scafold is a container for defining ui attributes of applications
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text("Calculator Flutter"),

      ),
      body: new Container(

      padding: const EdgeInsets.all(40.0),     // const means from all angle up right bottom top margin
      child: new Center(
        child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            new Text("Output : $output",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent
            ),),
            new TextField(keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: "Enter number 1"),
            controller: textview1,),
            new TextField(keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number 2"),
            controller: textview2,),
            new Padding(padding: const EdgeInsets.only(top: 10.0),),
            new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
              new MaterialButton(color:Colors.orangeAccent,child: Text("+"),
            onPressed: sumofNum,),
              new MaterialButton(color:Colors.orangeAccent,child: Text("-"),
                onPressed: minusofNum,),
            ],),
            new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
              new MaterialButton(color:Colors.orangeAccent,child: Text("*"),
                onPressed: mulofNum,),
              new MaterialButton(color:Colors.orangeAccent,child: Text("/"),
                onPressed: divideofNum,),
            ],),
            new Padding(padding: const EdgeInsets.only(top: 10.0),)
            ,Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
              new MaterialButton(color:Colors.blueAccent,child: Text("Reset"),

                onPressed: clearText,),
            ])


          ],
        ),


      ) ,

    )
      ,
      // Declaring floating button inside build method will position the button on standard right bottom corner.
//      floatingActionButton: new FloatingActionButton(onPressed: _changeText,
//      child: new Icon(Icons.add),)
      //,

    );
  }

  void clearText() {
    setState(() {
      number1=0;
      number2=0;
      textview1.text="0";
      textview2.text="0";
      output=0;

    });
  }
}
