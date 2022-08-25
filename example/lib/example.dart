import 'package:animated_floating_buttons/animated_floating_buttons.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  ExamplePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final GlobalKey<AnimatedFloatingActionButtonState> key =
      GlobalKey<AnimatedFloatingActionButtonState>();

  Widget add() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          key.currentState?.closeFABs();
        },
        heroTag: "Image",
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget image() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "Image",
        tooltip: 'Image',
        child: Icon(Icons.image),
      ),
    );
  }

  Widget inbox() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "Inbox",
        tooltip: 'Inbox',
        child: Icon(Icons.inbox),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      floatingActionButton: AnimatedFloatingActionButton(
        key: key,
        fabButtons: <Widget>[
          float1(),
          float1(),
        ],
        colorStartAnimation: Colors.blue,
        // colorEndAnimation: Colors.red, icon1: AssetImage('assets/plus 1.png'),
        icon2: AssetImage('assets/save 1.png'),
        // icon1: AssetImage('assets/save 1.png'),
        // animatedIconData: ,
      ),
    );
  }

  Widget float1() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 30,
        width: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.blue),
      ),
    );
  }
}
