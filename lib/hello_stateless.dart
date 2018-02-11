import 'package:flutter/material.dart';

class HelloStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _appBar = new AppBar(
      title: new Text('ADM Stateless'),
    );

    var _fab = new FloatingActionButton(
        onPressed: () {}, child: new Icon(Icons.add));

    var _body = new ListView(children: <Widget>[
      new ListTile(
        title: new Text("Ini Item"),
        subtitle: new Text("More info about this item"),
        leading: new CircleAvatar(child: new Text("A")),
        onTap: () {},
      ), new ListTile(
        title: new Text("Ini Item"),
        subtitle: new Text("More info about this item"),
        leading: new CircleAvatar(child: new Text("A")),
        onTap: () {},
      ), new ListTile(
        title: new Text("Ini Item"),
        subtitle: new Text("More info about this item"),
        leading: new CircleAvatar(child: new Text("A")),
        onTap: () {},
      ), new ListTile(
        title: new Text("Ini Item"),
        subtitle: new Text("More info about this item"),
        leading: new CircleAvatar(child: new Text("A")),
        onTap: () {},
      ),

    ]);

    return new Scaffold(
      appBar: _appBar,
      floatingActionButton: _fab,
      body: _body,
    );
  }
}
