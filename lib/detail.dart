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
            Text("ID: ${data['id']}"),
            SizedBox(
              height: 10,
            ),
            Text("TITTLE:   ${data['title']}"),
            Divider(
              height: 10,
              thickness: 5,
              color: Colors.black45,
              indent: 40,
              endIndent: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Text("DESCRIPTION:    ${data['body']}"),
            Divider(),
            RaisedButton(
              child: Text("Back to Dashboard"),
              onPressed: () => {Navigator.pop(context)},
            )
          ],
        ),
      ),
    );
  }
}
