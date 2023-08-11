import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( // created a material app widget
    // using home property( acts as a homepage for the emulator) to create a text widget
    // home: Text('Hey, How are you doing today?'),
      home: Home(),

  ));
}
  // open stateless widget class to hot reload.
//type stless then ctrl + space

class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  Scaffold(// acts like wrapper for other widgets
      appBar: AppBar(
      title: Text('my first app'),
      centerTitle: true,
      backgroundColor: Colors.green[600],
      ),

      body: Row(
        children: <Widget>[
        Expanded(
          flex: 3,
            child: Image.asset('assets/car1.jpg'
            )
        ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.pinkAccent,
            child: Text('2'),
          ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),

        ],
      ),

      floatingActionButton: FloatingActionButton(
      onPressed: () {  },
  child:Text('click'),
  backgroundColor: Colors.green[600],
  ),

  );
    }
  }




/*
Text(
'Hello Everyone!',
style: TextStyle(
fontSize: 20.0,
fontWeight: FontWeight.bold,
letterSpacing: 2.0,
color: Colors.grey[600],
fontFamily: 'IndieFlower',
),

),


 Icon(
        Icons.airport_shuttle,
        color: Colors.lightBlue,
        size: 50.0,

      ),


 ElevatedButton.icon(
        onPressed: () {  },
        icon: Icon(
          Icons.mail
        ),
        label: Text('mail me'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,

        ),
      ),

      IconButton(
        onPressed: () {
          print('you clicked me sucker!');
        },
        icon: Icon(Icons.alternate_email),
        color: Colors.amber,
      ),


      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello World'),
          TextButton(
            onPressed: (){},
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.amber),
            ),
            child: Text('click me'),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),
        ],
      ),

      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          Row(
            children: [
              Text('Hello'),
              Text('World'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.pinkAccent,
            child: Text('two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.amber,
            child: Text('three'),
          ),
        ],
      ),
Image.asset('assets/car2.jpg')
*/
