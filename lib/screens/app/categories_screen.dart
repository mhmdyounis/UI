import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 7,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue.shade200,
            alignment: Alignment.center,
            child: Text(
              'Categorise $index',
              style: const TextStyle(fontSize: 18),
            ),
          );
        });
  }
}
// body: GridView(
//   padding: EdgeInsets.all(12),
//   scrollDirection: Axis.vertical,
//   gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 2,
//       crossAxisSpacing: 10,
//       mainAxisSpacing: 10,
//       // mainAxisExtent: 225,
//       childAspectRatio: 133 / 225),
//   children: [
//     Container(
//       color: Colors.pink.shade100,
//     ),
//     Container(
//       color: Colors.blue.shade100,
//     ),
//     Container(
//       color: Colors.brown,
//     ),
//     Container(
//       color: Colors.pink.shade200,
//     )
//   ],
// ),
