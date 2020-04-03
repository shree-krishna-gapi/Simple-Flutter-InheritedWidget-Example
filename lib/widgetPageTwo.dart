import 'package:flutter/material.dart';
import 'event.dart';
import 'statecontainer.dart';
class WidgetPageTwo extends StatelessWidget {
  Event event;
  @override
  Widget build(BuildContext context) {
    final myInheritedWidget = StateContainer.of(context);
    event = myInheritedWidget.event;
    return Container(
      color: Colors.black12.withOpacity(0.1),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('This is OutPut Page Widget Title',style: TextStyle(fontSize: 17,letterSpacing: 0.4),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              event != null
                  ? Text(
                'You Typed Data:  ${event.eventName}',
              )
                  : Text("Waiting for Getting Text..."),
            ],
          )

        ],

      ),
    );
  }
}

