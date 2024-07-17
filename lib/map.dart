import 'package:flutter/material.dart';

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Map',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
        leading: const Icon(Icons.menu),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: List.generate(teat.length, (index) => column(name:teat[index]['Name'],id:teat[index]['Icon']),),
        ),
      ),
    );
  }
}
Column column({required String name,required var id}) {
  return Column(
    children: [
      const SizedBox(height: 15,),
      Container(
        height: 80,
        width: double.infinity,
        color: const Color(0xffFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

              Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(name,style: TextStyle(fontSize: 25,),),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(id,size: 25,),
            ),
          ],
        ),
      ),

    ],
  );
}

List teat = [
{
'Name': 'Exit',
'Icon': Icons.exit_to_app,
},
{
'Name': 'Play',
'Icon': Icons.play_arrow,
},
{
'Name': 'Pause',
'Icon': Icons.pause,
},
{
'Name': 'Stop',
'Icon': Icons.stop,
},
{
'Name': 'Close',
'Icon': Icons.close,
},
{
'Name': 'Delete',
'Icon': Icons.delete,
},
{
'Name': 'Email',
'Icon': Icons.email,
}
];
