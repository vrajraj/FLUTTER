import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "stl-stf",
      home:new Homepage(),
      theme: new ThemeData(
        backgroundColor: Colors.deepOrangeAccent,
        primarySwatch: Colors.green,
        brightness: Brightness.dark
      ),
    );
  }
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  String mytext="Hey siri!!";
  void _changetext()
  {
    setState(() {
      if(mytext.startsWith("H"))
        {
          mytext="how can i help you";
        }
      else
        {
          mytext="hey siri!!";
        }
    });
  }

  Widget _bodywiget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
        child: new Center(
              child:new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   new Text(mytext , style: new TextStyle(
                     fontSize:30.0,
                     color: Colors.green,

                   ),),
                   new RaisedButton(
                      child: new Text("click" ,style: new TextStyle(
                        fontSize: 25.0,
                        color: Colors.blue,
                      ),),
                      color: Colors.black,
                      onPressed:_changetext ),
                                   ],
                               ),
                         ),
                 );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Center(child: new Text("Gohil Masion" , style: new TextStyle(
          color: Colors.green,
        ),
        ),)
      ),
        body: _bodywiget()
    );
  }
}
