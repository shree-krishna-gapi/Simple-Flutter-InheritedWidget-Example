import 'package:flutter/material.dart';
import 'statecontainer.dart';

class WidgetPageOne extends StatefulWidget {
  // final Widget child;

  // AddEvent({Key key, this.child}) : super(key: key);

  _WidgetPageOneState createState() => _WidgetPageOneState();
}

class _WidgetPageOneState extends State<WidgetPageOne> {
  String forEventVal;
  final editKey = new GlobalKey<FormState>();

  submitEventDetails() {
    final myInheritedWidget = StateContainer.of(context);
    // if (editKey.currentState.validate()) {
    editKey.currentState.save();
    myInheritedWidget.updateEventInfo(
        eventName: forEventVal);

    // }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12.withOpacity(0.05),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: editKey,
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('This is Input Page Widget Title',style: TextStyle(fontSize: 17,letterSpacing: 0.4),),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Event Name"),
                    validator: (value) =>
                    value.length == 0 ? "Enter Event Name" : null,
                    onSaved: (value) => forEventVal = value,
                  ),
                  RaisedButton(color: Color(0xffa21535).withOpacity(0.9),
                    child: Text("Send TextField to Second Page",style: TextStyle(fontSize: 15.0,color: Colors.white),),
                    onPressed: submitEventDetails,
                  ),

                ],
              )
        ),
      ),
    );
  }
}
