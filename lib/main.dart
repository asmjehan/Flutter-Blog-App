import 'package:flutter/material.dart';
import 'detail.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late List posts;

  Future<bool> _getPosts() async {
    String serviceUrl = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(Uri.parse(serviceUrl));

    setState(() {
      posts = json.decode(response.body.toString());
      print(posts);
    });
    return true;
  }

  @override
  void initState() {
    super.initState();
    this._getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: new ListView.builder(
        padding: new EdgeInsets.all(8.0),
        itemCount: posts.length == null ? 0 : posts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(posts[index]["title"]),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detail(posts[index]))),
            },
          );
        },
      ),
    );
  }
}
