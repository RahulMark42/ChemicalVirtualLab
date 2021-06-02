import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtuallabapp/coursesaligned.dart';
import 'package:virtuallabapp/main.dart';
import 'package:virtuallabapp/introduction.dart';
import 'package:virtuallabapp/prerequisites.dart';
import 'package:virtuallabapp/reynoldsexpt.dart';
import 'package:virtuallabapp/targetaudience.dart';
import 'package:virtuallabapp/about.dart';

void main() {
  runApp(listofexperiments());
}

// ignore: camel_case_types
class listofexperiments extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chemical Virtual Lab',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Listofexperiments(title: 'Chemical Virtual Lab'),
    );
  }
}

class Listofexperiments extends StatefulWidget {
  Listofexperiments({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Listofexperiments createState() => _Listofexperiments();
}

class _Listofexperiments extends State<Listofexperiments> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("Virtual Lab App", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(
          child: Container(
            child: GridView.count(
              crossAxisCount: 1,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 5,
              children: <Widget> [
                Container(
                  width: 20,
                  height: 20,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => reynoldsexpt()));
                    },
                    child: new Image.asset("assets/expt01.png", height: 250, width: 250),
                  )
                ),
                Container(
                    width: 20,
                    height: 20,
                    child: TextButton(
                      onPressed: (){

                      },
                      child: new Image.asset("assets/expt01.png", height: 250, width: 250),
                    )
                ),
                Container(
                    width: 20,
                    height: 20,
                    child: TextButton(
                      onPressed: (){

                      },
                      child: new Image.asset("assets/expt01.png", height: 250, width: 250),
                    )
                ),
                Container(
                    width: 20,
                    height: 20,
                    child: TextButton(
                      onPressed: (){

                      },
                      child: new Image.asset("assets/expt01.png", height: 250, width: 250),
                    )
                ),
                Container(
                    width: 20,
                    height: 20,
                    child: TextButton(
                      onPressed: (){

                      },
                      child: new Image.asset("assets/expt01.png", height: 250, width: 250),
                    )
                ),
                Container(
                    width: 20,
                    height: 20,
                    child: TextButton(
                      onPressed: (){

                      },
                      child: new Image.asset("assets/expt01.png", height: 250, width: 250),
                    )
                ),
                Container(
                    width: 20,
                    height: 20,
                    child: TextButton(
                      onPressed: (){

                      },
                      child: new Image.asset("assets/expt01.png", height: 250, width: 250),
                    )
                ),
                Container(
                    width: 20,
                    height: 20,
                    child: TextButton(
                      onPressed: (){

                      },
                      child: new Image.asset("assets/expt01.png", height: 250, width: 250),
                    )
                ),
              ]
            ),
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
                title: Text("About This App",style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => about()));},
              ),
            ],
          ),
        ),

      ),

    );
  }
}