import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // SizedBox(
        //   height: 100,
        //   child: ListView.builder(
        //       physics: BouncingScrollPhysics(),
        //       itemCount: 10,
        //       scrollDirection: Axis.horizontal,
        //       itemBuilder: (context, index) {
        //         return Container(
        //           margin: EdgeInsetsDirectional.only(end: 10),
        //           height: 100,
        //           width: 100,
        //           color: Colors.blue.shade100,
        //         );
        //       }),
        // )
        //***********************************************
        const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Categorise',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 19,
                  letterSpacing: 2.7),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(
            height: 130,
            child: GridView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Container(
                      color: index % 2 == 0
                          ? Colors.deepPurple.shade100
                          : Colors.pink.shade200);
                }),
          ),
        ),
        //***********************************************
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Latest Products',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 19,
                letterSpacing: 2.7,
                wordSpacing: 2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SizedBox(
            height: 300,
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Container(
                      color: index % 2 == 0
                          ? Colors.pink.shade200
                          : Colors.deepPurple.shade100);
                }),
          ),
        ),
      ],
    );
  }
}
