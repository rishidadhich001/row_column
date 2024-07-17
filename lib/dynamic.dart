import 'package:flutter/material.dart';

List n=[];
int count=1;

class Dynamic extends StatefulWidget {
  const Dynamic({super.key});

  @override
  State<Dynamic> createState() => _DynamicState();
}

class _DynamicState extends State<Dynamic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff244d61),
        title: const Text('Dynamic List', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25),),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [...List.generate(n.length, (index) => Button(index))],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                n.add(Button(count));
              });
            },
            child: Container(
              margin: const EdgeInsets.all(7),
              alignment: Alignment.center,
              height: 70,
              width: 70,
                decoration: const BoxDecoration(
                    color: Color(0xff244D61),
                    shape: BoxShape.circle,
                    boxShadow: [
                    BoxShadow(
                    color: Colors.black54, blurRadius: 4, spreadRadius: 2),
              ],
            ),
              child: const Text('+',style: TextStyle(color: Colors.white,fontSize: 25),),
          ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                n.removeLast();
              });
            },
            child: Container(
              margin: const EdgeInsets.all(7),
              alignment: Alignment.center,
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                color: Color(0xff244D61),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54, blurRadius: 4, spreadRadius: 2)
                ],
              ),
              child: const Text(
                '-',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget Button(int index) {
    index += 1;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        color: (index%2==1)?Color(0xff75E2FF):Color(0xff5689C0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text('$index',style: TextStyle(color: Colors.white,fontSize: 20),),
    );
  }
}