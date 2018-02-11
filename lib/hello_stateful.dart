import 'package:flutter/material.dart';

class HelloStateful extends StatefulWidget {
  @override
  _HelloStatefulState createState() => new _HelloStatefulState();
}

class _HelloStatefulState extends State<HelloStateful> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = new Key("scaf");
    final textContoller = new TextEditingController();


    shareText(BuildContext ctx) {
      print("Shared ${textContoller.text}");
      Scaffold.of(ctx).showSnackBar(
          new SnackBar(content: new Text("Shared ${textContoller.text}")));
    }


    var captionStyle = Theme
        .of(context)
        .textTheme
        .caption;

    var textPutih = new TextStyle(color: Colors.white);

    var _appbar = new AppBar(
      title: new Text("ADM #5"),
      actions: <Widget>[
        new FlatButton(
            onPressed: () => shareText(context),
            child: new Text(
                "Share", style: captionStyle.copyWith(color: Colors.white))),
        new IconButton(
            icon: new Icon(Icons.share),
            onPressed: () => shareText(context))
      ],
    );

    var _fab = new FloatingActionButton(
        child: new Icon(Icons.refresh),
        onPressed: () {});

    var _drawer = new Drawer();

    var _body = new ListView(children: <Widget>[
      new TextField(controller: textContoller),


      new ListTile(
        title: new Text("John Doe"),
        onTap: () {},
        subtitle: new Text("johndoe@gmail.com"),
        leading: new CircleAvatar(
          backgroundImage: new NetworkImage(
              "https://www.w3schools.com/w3css/img_avatar3.png"),
        ),
      ),

      new ListTile(
        title: new Text("Putra"),
        onTap: () {},
        subtitle: new Text("putraxor@gmail.com"),
        leading: new CircleAvatar(
          backgroundImage: new NetworkImage(
              "https://www.w3schools.com/w3css/img_avatar3.png"),
        ),
      ),

      //container horizontal
      new Row(children: <Widget>[
        new RaisedButton(onPressed: () {}, child: new Text("Save")),
        new RaisedButton(onPressed: () {}, child: new Text("Edit")),
        new RaisedButton(onPressed: () {}, child: new Text("Delete")),
        new RaisedButton(onPressed: () {}, child: new Text("Cancel")),
      ]),

      new SizedBox(height: 24.0),

      //container vertikal
      new Column(children: <Widget>[
        new RaisedButton(onPressed: () {}, child: new Text("Save")),
        new RaisedButton(onPressed: () {}, child: new Text("Edit")),
        new RaisedButton(onPressed: () {}, child: new Text("Delete")),
        new RaisedButton(onPressed: () {}, child: new Text("Cancel")),
      ]),

      //Mengatur Padding
      new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new RaisedButton(onPressed: () {}),
      ),

      //CardView
      new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Material(
            elevation: 4.0,
            borderRadius: new BorderRadius.circular(8.0),
            child: new Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                new Image(image: new NetworkImage(
                    "http://socialpro.miguelvasquez.net/public/avatar/large_johndoe_18gu2qv.jpg")),
                new Text("Gambar John Doe", style: textPutih),
              ],
            ),
          )),

    ]);

    return new Scaffold(
      key: scaffoldKey,
      appBar: _appbar,
      floatingActionButton: _fab,
      body: _body,
      drawer: _drawer,
    );
  }

}
