import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  var data;
  Detail(this.data);
  _DetailState createState() => _DetailState(this.data);
}

class _DetailState extends State<Detail> {
  var data;
  _DetailState(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("id:      ${data['id']}"),
            Text("title:   ${data['title']}"),
            Divider(),
            Text("description:    ${data['body']}"),
            Divider(),
          ],
        ),
      ),
    );
  }
}
