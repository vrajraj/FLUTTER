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
                 children: <Widget>[
                   new Text(mytext),
                   new RaisedButton(
                      child: new Text("click"),
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
        title:new Center(child: new Text("Gohil Masion"),)
      ),
        body: _bodywiget()
    );
  }
}
