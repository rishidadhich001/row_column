import 'package:flutter/material.dart';

class Ram extends StatefulWidget {
  const Ram({super.key});

  @override
  State<Ram> createState() => _RamState();
}

class _RamState extends State<Ram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Icons', style: TextStyle(color: Colors.black),),
        elevation: 3,
        shadowColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 8,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  ...List.generate(5, (index) => rowcontainer(id: teat[index]))

                ],
              ),

            ),
            const SizedBox(height: 5,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  ...List.generate(
                      4, (index) => rowcontainer(id: teat[5 + index]))

                ],
              ),
            ),
            const SizedBox(height: 5,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  ...List.generate(
                      5, (index) => rowcontainer(id: teat[9 + index]))

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  Container rowcontainer({required var id }) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: const Color(0xffF5F5F5),
          borderRadius: BorderRadiusDirectional.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 5
            )
          ]
      ),
      child: Icon(id, color: Colors.grey,),
    );
  }

  List teat = [
    Icons.add,
    Icons.album,
    Icons.chevron_left,
    Icons.navigate_next,
    Icons.alarm,
    Icons.verified_user,
    Icons.account_circle,
    Icons.more,
    Icons.sync,
    Icons.shuffle,
    Icons.more_vert,
    Icons.arrow_downward_outlined,
    Icons.phone,
    Icons.search,
    Icons.add_a_photo_sharp,
    Icons.square,
    Icons.arrow_right,
    Icons.apps_rounded,
    Icons.circle_outlined,
    Icons.wifi_lock_outlined,
  ];
}