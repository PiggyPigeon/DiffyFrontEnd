import 'package:flutter/material.dart';

class Message {
  final String msg;
  final String time;
  final bool seen;
  final bool received;
  final bool sent;
  final bool isMe ;
  Message(this.msg, this.time, this.seen, this.received, this.sent, this.isMe);
}

List<Message> msgs = [
  Message("Type a message at the bottom of this screen to start a conversation.	", "12:56 am", false,false, true,true),
  Message("Just drag and drop images you want to use in the conversation to this window.", "12:56 am", true,false, false,true),
  Message("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor", "12:56 am", true,false, false,true),
  Message("Hello", "12:56 am", true,false, false,false),
  Message("ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,", "12:56 PM", true,false, false,false),
  Message("Hell You can then edit a message by clicking on it. This way you can change the text, status (check marks) and time.	You can also determine whether the message was sent by the sender (right) or receiver (left).	", "12:56 am", true,false, false,true),
  Message("Hello", "12:56 am", true,true, false,true),
  Message("Hello", "12:56 am", true,false, false,true),
  Message("Hello", "12:56 am", true,false, false,false),
  Message("A message sent for some purpose other than its content, which may consist of dummy groups or may have a meaningless text.", "12:56 PM", true,false, false,false),
  Message("Hello", "12:56 am", true,false, false,false),
  Message("Hello", "12:56 PM", true,false, false,false),
  Message("Hell HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloo", "12:56 am", true,false, false,true),
  Message("Hello", "12:56 am", true,true, false,true),
  Message("Hello", "12:56 am", true,false, false,true),
  Message("Hell HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloo", "12:56 am", true,false, false,false),
  Message("Hello", "12:56 am", true,false, false,true),
  Message("Hello", "12:56 am", true,false, false,true),
  Message("Hello", "12:56 am", true,false, false,false),
  Message("Hello", "12:56 am", true,false, false,true),
  Message("ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,", "12:56 am", true,false, false,false),
  Message("Hello", "12:56 am", true,false, false,true),
  Message("Hello", "12:56 am", true,false, true,false),
] ;
