import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  List<Message> message = [
    Message(
        text: 'Привет да пожалуйста',
        date: DateTime.now().subtract(Duration(minutes: 1, days: 3, hours: 5)),
        isSentByeMe: false),
    Message(
        text: 'Привет друг тебе чем небудь помочь ?',
        date: DateTime.now().subtract(Duration(minutes: 2, days: 3)),
        isSentByeMe:  true),
    Message(
        text: 'Мы вам поможем не волнуйтесь',
        date: DateTime.now().subtract(Duration(minutes: 1)),
        isSentByeMe: true),
    Message(
        text: 'Я не знаю куда постурпать (',
        date: DateTime.now().subtract(Duration(minutes: 1)),
        isSentByeMe: false),
    // Message(
    //     text: 'Привет друг тебе чем небудь помочь ?',
    //     date: DateTime.now().subtract(Duration(minutes: 1)),
    //     isSentByeMe: false),
    // Message(
    //     text: 'Привет друг тебе чем небудь помочь ?',
    //     date: DateTime.now().subtract(Duration(minutes: 1)),
    //     isSentByeMe: false),
  ].reversed.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CHAT'), centerTitle: true, backgroundColor: Color.fromARGB(248, 120, 66, 154),
      ),
      body: Column(
        children: [
          Expanded(
              child: GroupedListView<Message, DateTime>(
            padding: EdgeInsets.all(8),
            elements: message,
            groupBy: (message) => DateTime(
                message.date.year, message.date.month, message.date.day),
            groupHeaderBuilder: (Message message) => SizedBox(
              height: 40,
              child: Center(
                  child: Card(
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(DateFormat.yMMMd().format(message.date),
                  style:  const TextStyle(color: Colors.white),),
                ),
              )),
            ),
            itemBuilder: (context, Message message) => Align(
              alignment: message.isSentByeMe
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(message.text),
                ),
              ),
            ),
          )),
          Container(
            color: Colors.grey.shade300,
            child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Type your message here....')),
          )
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByeMe;
  const Message(
      {required this.text, required this.date, required this.isSentByeMe});
}
