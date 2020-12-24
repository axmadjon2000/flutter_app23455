import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id='home_page';
  @override
  _HomePageState createState() => _HomePageState();
}
enum items{salom,hello,hola,hi}
class _HomePageState extends State<HomePage> {
  double _x;
  items value1=items.salom;
  @override
  void initState(){
    super.initState();
    _x=0.0;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:DropdownButton(
          value:value1,
          items:[
            DropdownMenuItem(
              value:items.salom,
              child: Text('${items.salom}'.substring(6)),
            ),
            DropdownMenuItem(
              value:items.hello,
              child: Text('${items.hello}'.substring(6)),
            ),
            DropdownMenuItem(
              value:items.hola,
              child: Text('${items.hola}'.substring(6)),
            ),
            DropdownMenuItem(
              value:items.hi,
              child: Text('${items.hi}'.substring(6)),
            ),
          ],
          onChanged: (items v){
            setState(() {
              value1=v;
            });
          },
        ),
      ),
    );
  }
}
