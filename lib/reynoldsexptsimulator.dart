import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtuallabapp/coursesaligned.dart';
import 'package:virtuallabapp/listofexperiments.dart';
import 'package:virtuallabapp/main.dart';
import 'package:virtuallabapp/introduction.dart';
import 'package:virtuallabapp/prerequisites.dart';
import 'package:virtuallabapp/about.dart';
import 'package:virtuallabapp/targetaudience.dart';

void main() {
  runApp(reynoldsexptsim());
}

// ignore: camel_case_types
class reynoldsexptsim extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chemical Virtual Lab',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Reynoldsexptsim(title: 'Chemical Virtual Lab'),
    );
  }
}

class Reynoldsexptsim extends StatefulWidget {
  Reynoldsexptsim({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _Reynoldsexptsim createState() => _Reynoldsexptsim();
}

class _Reynoldsexptsim extends State<Reynoldsexptsim> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("Experiment 01: Reynolds Experiment - Simulator", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(25),
                child: Text("Reynolds Experiment - Simulator" ,
                    style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 18, decoration: TextDecoration.underline)
                ),),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(25),
                child: Text("Step 1: " ,
                    style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 18,)
                ),),
            ],
          ),

        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                ),
                child: Text(
                  'Virtual Lab App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home_filled),
                title: Text("Home", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));},
              ),
              ListTile(
                leading: Icon(Icons.question_answer_rounded),
                title: Text("Introduction", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => introduction()));},
              ),
              ListTile(
                leading: Icon(Icons.book_online_rounded),
                title: Text("List of Experiments", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => listofexperiments()));},
              ),
              ListTile(
                leading: Icon(Icons.account_box_rounded),
                title: Text("Target Audience", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => targetaudience()));},
              ),
              ListTile(
                leading: Icon(Icons.add_box),
                title: Text("Courses Aligned", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => coursesaligned()));},
              ),
              ListTile(
                leading: Icon(Icons.speaker_notes),
                title: Text("Pre-Requisites", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => prerequisites()));},
              ),
              ListTile(
                leading: Icon(Icons.info_outline_rounded),
                title: Text("About This App", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => about()));},
              ),
            ],
          ),
        ),
      ),
    );
  }
}