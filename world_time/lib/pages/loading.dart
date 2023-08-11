import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  String time = 'loading';

  //   void getData()async{
// Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
// Map data = jsonDecode(response.body);
// print(data);
// print(data['title']);
//   }



  void setupWorldTime() async{
  WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png',url: 'Europe/berlin');
await instance.getTime();
  // print(instance.time);
  // setState(() {
  //   time = instance.time!;
  // });
Navigator.pushReplacementNamed(context, '/home', arguments: {
  'location':instance.location,
  'flag': instance.flag,
  'time': instance.time,
  'isDayTime':instance.isDayTime,
});
}

  @override
  void initState() {
    super.initState();
    // print('initState function ran');
    setupWorldTime();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
child: SpinKitFadingCube(
  color: Colors.white,
  size: 80.0,
),
      )
    );
  }
}
