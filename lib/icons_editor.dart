import 'package:flutter/material.dart';
import 'package:row_column/utils/global.dart';

class Editor extends StatefulWidget {
  const Editor({super.key});

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 7,
        title: const Text(
          'Icons Editor',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:const EdgeInsets.all(10) ,
              height: h/2.7,
              width: w,
              decoration:  BoxDecoration(
                color: const Color(0xfffafafa),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 5,
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(icon,size: h/10,color: color_data),
            ),
            color_icon(h, w, 'select color'),
            Container(
              margin: EdgeInsets.only(top: h/60),
              height: h/8,
              width: w,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 5, spreadRadius: 5),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      color_C.length,
                          (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            color_data = color_C[index];
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: h/ 5,
                          width: h/ 9,
                          decoration: BoxDecoration(
                              color: color_C[index],
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            color_icon(h, w, 'Select Icons'),
            Container(
              margin: EdgeInsets.only(top: h/ 60),
              height: h / 12,
              width: w,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 5, spreadRadius: 5),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      color_C.length,
                          (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            icon = icon_I[index];
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: h / 8,
                          width: h / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(icon_I[index],size: h/20,color: color_data),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}