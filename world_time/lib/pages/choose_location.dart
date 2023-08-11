import 'package:flutter/material.dart';

import '../services/world_time.dart';


class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

 // int counter = 0;

  // void getData()async{
  //   // simulate a network request for a username
  //   String username = await Future.delayed(Duration(seconds: 3), (){
  //     //print('yoshi');
  //     return 'yoshi';
  //   });
  //
  //
  //   // simulate a network request to get bio of the username
  //   String bio = await Future.delayed(Duration(seconds: 2), (){
  //    // print('vegan, musician & egg collector');
  //   return 'vegan, musician & egg collector';
  //   });
  //
  //   print('$username - $bio');
  // }
  // @override
  // void initState() {
  //   super.initState();
  //  // print('initState function ran');
  //   getData();
  // }

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'America/Detroit', location: 'Detroit', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  void updateTime(index) async{
WorldTime instance = locations[index];
// print(instance);
await instance.getTime();
//navigate to home screen
  Navigator.pop(context,{
    'location':instance.location,
    'flag': instance.flag,
    'time': instance.time,
    'isDayTime':instance.isDayTime,
  });

  }


  @override
  Widget build(BuildContext context) {
   // print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      // body: ElevatedButton(
      //     onPressed: (){
      //
      //       setState(() {
      //         counter +=1;
      //       });
      //     },
      //   child: Text('Counter is $counter'),
      //
      // ),

body: ListView.builder(itemCount: locations.length,
itemBuilder: (context, index){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical:1.0, horizontal: 4.0),
    child: Card(
      child: ListTile(
        onTap: (){
          // print(locations[index].location);
    updateTime(index);
        },
        title: Text(locations[index].location),
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/${locations[index].flag}'),
        ),
      ),
    ),
  );
},
),
    );
  }
}
