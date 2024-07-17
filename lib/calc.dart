import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff54759E),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          'CALC',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: const TextStyle(color: Colors.black, fontSize: 80),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        count -= 2;
                      });
                    },
                    child: Containerdata('-2')),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        count += 2;
                      });
                    },
                    child: Containerdata('+2'))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        count -= 4;
                      });
                    },
                    child: Containerdata('-4')),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        count += 4;
                      });
                    },
                    child: Containerdata("+4")),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    count = 0;
                  });
                },
                child: Containerdata('Clear')),
          ],
        ),
      ),
    );
  }

  Widget Containerdata(String msg) {
    return Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
        color: const Color(0xff54759E),
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: Text(
        '$msg',
        style: const TextStyle(color: Colors.white, fontSize: 40),
      ),
    );
  }
}

int count = 0;
