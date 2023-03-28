import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  /* const*/ UsersScreen({Key? key}) : super(key: key);
  final List<String> data = [
    'mohammed',
    'Ahmed',
    'Roma',
    'Khamis',
    'Ramy',
    'Ali'
  ];
  final List<String> dataSub = [
    'mmmmm',
    'aaaaaaa',
    'rrrrr',
    'kkkkk',
    'rrrr',
    'aaaa'
  ];

  void _getData() {
    dataSub.map((e) => e).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return ListTile(
              onTap: () => Navigator.pushNamed(context, '/chat_screen'),
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('Sub Title'));
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.blue,
            indent: 25,
            endIndent: 25,
            thickness: 1,
            height: 10,
          );
        },
        itemCount: 12);
  }
}
//*///******************************************
// ListView.builder(
//   physics: BouncingScrollPhysics(),
//     reverse: false,
//     itemCount: 12,
//     itemBuilder: (context, index) {
//   return ListTile(
//     leading: Icon(Icons.person),
//     title: Text('Title : $index'),
//     subtitle: Text('Sub Title'),
//   );
// })
//*********************************************
//  /*****************************************
// ListView(
//   children: data
//       .map((e) => ListTile(
//             leading: Icon(Icons.person),
//             title: Text(e),
//           ))
//       .toList(),
// ),
//*************************************************
//**************************************
// body: ListView(
//   children: [
//     ListTile(
//       leading: Icon(Icons.person),
//       title: Text('Title'),
//       subtitle: Text('Sub Title'),
