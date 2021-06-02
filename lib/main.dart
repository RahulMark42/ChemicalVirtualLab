import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtuallabapp/about.dart';
import 'package:virtuallabapp/coursesaligned.dart';
import 'package:virtuallabapp/introduction.dart';
import 'package:virtuallabapp/prerequisites.dart';
import 'package:virtuallabapp/targetaudience.dart';
import 'listofexperiments.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chemical Virtual Lab',
      theme: ThemeData(
        fontFamily: 'Official',
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Chemical Virtual Lab'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold(
        appBar:AppBar(
          title: Text("Home", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
          //foregroundColor: Colors.green,
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(
          child: Container(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 60,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => introduction()));
                    },
                    child: new Image.asset("assets/introduction.png", height: 250, width: 250),
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => listofexperiments()));
                    },
                    child: new Image.asset("assets/list.png", height: 250, width: 250),
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => targetaudience()));
                    },
                    child: new Image.asset("assets/student.png", height: 250, width: 250),
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => coursesaligned()));
                    },
                    child: new Image.asset("assets/courses.png", height: 250, width: 250),
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => prerequisites()));
                    },
                    child: new Image.asset("assets/pre.png", height: 250, width: 250),
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => about()));
                    },
                    child: new Image.asset("assets/questionmark.png", height: 250, width: 250),
                  ),
                )
              ],
            ),
          ),
        ) ,
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