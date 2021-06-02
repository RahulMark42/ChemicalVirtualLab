import 'package:flutter/material.dart';
import 'package:virtuallabapp/coursesaligned.dart';
import 'package:virtuallabapp/listofexperiments.dart';
import 'package:virtuallabapp/main.dart';
import 'package:virtuallabapp/prerequisites.dart';
import 'package:virtuallabapp/targetaudience.dart';
import 'package:virtuallabapp/about.dart';
import 'package:virtuallabapp/about.dart';

void main() {
  runApp(introduction());
}

// ignore: camel_case_types
class introduction extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chemical Virtual Lab',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Introduction(title: 'Chemical Virtual Lab'),
    );
  }
}

class Introduction extends StatefulWidget {
  Introduction({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Introduction createState() => _Introduction();
}

class _Introduction extends State<Introduction> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("Introduction", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is Introduction Page", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20))
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
                    fontFamily: 'OpenSans', fontWeight: FontWeight.w400,
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