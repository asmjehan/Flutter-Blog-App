import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  Detail(post);

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
          Text("detail page"),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back to Dashboard"),
          ),
        ],
      ),
    );
  }
}
