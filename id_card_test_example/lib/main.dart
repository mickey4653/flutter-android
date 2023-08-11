import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Home(),
));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.grey[900],
      appBar: AppBar(
       title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),

floatingActionButton: FloatingActionButton(
  onPressed: (){
setState(() {
  ninjaLevel+=1;
});
  },
  backgroundColor: Colors.grey[800],
child: Icon(Icons.add,
),
),

body: Padding(
  padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Center(
        child: CircleAvatar(
backgroundImage: AssetImage('assets/thumb.jpg'),
          radius: 40.0,
        ),
      ),
Divider(
  color: Colors.grey[400],
  height: 90.0,
),
      Text('NAME',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18.0,
        letterSpacing: 2.0,
      ),
      ),
SizedBox(height: 10.0,),
      Text('Michael Adeniyi',
        style: TextStyle(
          color: Colors.amberAccent[200],
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
      ),
      SizedBox(height: 30.0,),
      Text('CURRENT DEGREE LEVEL',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 18.0,
          letterSpacing: 2.0,
        ),
      ),
      SizedBox(height: 10.0,),
      Text('$ninjaLevel',
        style: TextStyle(
          color: Colors.amberAccent[200],
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
      ),
      SizedBox(height: 30.0),

      Row(
        children: <Widget>[
          Icon(Icons.email,
          color: Colors.grey[400],
          ),
          SizedBox(width: 10.0),

          Text('madeniyi@umd.edu',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 18.0,
              letterSpacing: 2.0,
            ),
          ),
        ],
      ),

    ],
  ),
),

    );
  }
}



