import 'package:flutter/material.dart';
import 'statecontainer.dart';
import 'widgetPageOne.dart';
import 'widgetPageTwo.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateContainer(
      child: Scaffold(
        appBar: AppBar(title: Text('Simple Flutter Inherited Widget'),),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(child: WidgetPageOne(),flex: 2,),
              Expanded(child: WidgetPageTwo(),flex: 3,)
            ],
          ),
        ),
      ),
    );
  }
}
