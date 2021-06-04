import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Detail(),
  ));
}

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Column(
        children: [
          Text("ok"),
          ElevatedButton(
            onPressed: () {},
            child: Text("Page 2"),
          ),
        ],
      ),
    );
  }
}
