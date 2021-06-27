import 'package:bs_flutter_alert/bs_flutter_alert.dart';
import 'package:bs_flutter_responsive/bs_flutter_responsive.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bootstrap Alert'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: BsRow(
            gutter: EdgeInsets.only(left: 10.0, right: 10.0),
            children: [
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Text('Alert Primary'),
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.secondary,
                  child: Text('Alert Secondary'),
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.success,
                  child: Text('Alert Success'),
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.danger,
                  child: Text('Alert Danger'),
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.warning,
                  child: Text('Alert Warning'),
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.info,
                  child: Text('Alert Info'),
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.light,
                  child: Text('Alert Light'),
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen(md: Col.col_4),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.dark,
                  child: Text('Alert Dark'),
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen.all(Col.col_12),
                child: BsAlert(
                  closeButton: true,
                  margin: EdgeInsets.only(bottom: 10.0),
                  style: BsAlertStyle.success,
                  heading: Text('Hello World'),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Alert Dark'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
