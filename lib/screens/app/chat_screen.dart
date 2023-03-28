import 'package:flutter/material.dart';
import 'package:ui_app/models/message.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  final List<Message> _message = <Message>[
    Message(content: 'Message 1', isOwner: false),
    Message(content: 'Message 1', isOwner: false),
    Message(content: 'Message sxgjsys jks shs', isOwner: true),
    Message(content: 'Message sxgjsys jks shs', isOwner: true),
    Message(content: 'Message skxsuius', isOwner: true),
    Message(content: 'Message xc', isOwner: true),
    Message(content: 'Message xc', isOwner: false),
    Message(content: 'Message icx u xhy ush s', isOwner: false),
    Message(content: 'Message ckdiucguc uiyc c ig ', isOwner: true),
    Message(content: 'Message ckdiucguc uiyc c ig ', isOwner: true),
    Message(content: 'Message ckdiucguc uiyc c ig ', isOwner: true),
    Message(content: 'Message djkcydgcdd d d d    yc', isOwner: false),
    Message(content: 'Message djkcydgcdyc', isOwner: false),
    Message(content: 'Messa   udhiu iyciccy icge djkcydgcdyc', isOwner: false),
    Message(content: 'Message djkcydg  cdyc', isOwner: true),
    Message(content: 'Message djkcyd  dd gcdyc', isOwner: false),
    Message(content: 'Message djkcydgcdhg  cgsccg ig csci 7yc', isOwner: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat'),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      children: _message.map((Message message) {
                    return Align(
                      alignment: message.isOwner
                          ? AlignmentDirectional.centerEnd
                          : AlignmentDirectional.topStart,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: message.isOwner
                                ? Colors.pink.shade200
                                : Colors.blue.shade100,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10))),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          message.content,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  }).toList()),
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(offset: Offset(0, -2), color: Colors.amberAccent)
              ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: 'Enter Message...',
                    ),
                  )),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send))
                ],
              ),
            )
          ],
        ));
  }
}
