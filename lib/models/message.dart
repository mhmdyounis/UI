import 'package:flutter/material.dart';

class Message {
  final String content;
  final bool isOwner;

  const Message({
    required this.content,
    required this.isOwner,
  });
}
