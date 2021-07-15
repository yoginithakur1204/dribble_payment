import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {},
              child: Text('cancel'),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Leave'),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> showAlertDialog() async {
  var context;
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          content: Text(''),
          actions: <Widget>[
            MaterialButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);
                }),
            Spacer(),
            MaterialButton(
                child: Text('Leave'),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        );
      });
}
