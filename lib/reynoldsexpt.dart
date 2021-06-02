import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtuallabapp/coursesaligned.dart';
import 'package:virtuallabapp/listofexperiments.dart';
import 'package:virtuallabapp/main.dart';
import 'package:virtuallabapp/introduction.dart';
import 'package:virtuallabapp/prerequisites.dart';
import 'package:virtuallabapp/about.dart';
import 'package:virtuallabapp/targetaudience.dart';
import 'package:virtuallabapp/reynoldsexptsimulator.dart';

void main() {
  runApp(reynoldsexpt());
}

// ignore: camel_case_types
class reynoldsexpt extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chemical Virtual Lab',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Reynoldsexpt(title: 'Chemical Virtual Lab'),
    );
  }
}

class Reynoldsexpt extends StatefulWidget {
  Reynoldsexpt({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Reynoldsexpt createState() => _Reynoldsexpt();
}

class _Reynoldsexpt extends State<Reynoldsexpt> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("Experiment 01: Reynolds Experiment", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 20)),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(25),
                child: Text("Experiment 01: Reynolds Experiment" ,
                  style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 18, decoration: TextDecoration.underline)
                ),),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(25),
                child: Text("Aim:\n\nTo perform Reynolds experiment on Virtual Lab and study the flow behavior.\n\nTheory:\n\nPipe flow problems occur in the design of many types of engineering projects. A few of these include refineries (liquid flow), gasoline plants (gas or vapor flow), chemical plants etc. Fluid flow is an integral part of any chemical industry and understanding the phenomena that dictate the motion of any fluid through pipes is of utmost importance to any chemical engineer. There is always need of develop an efficient system. To reduce wastage of energy through pipeflow, it would be beneficial to first study the various flow regimes of fluids on a small scale.\n\nHere are some formulae which we are using in this experiment:  " ,
                    style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 15, wordSpacing: 2.0, height: 1.5)
                ),),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(25),
                child: new Image.asset("assets/formula1.png",),
                ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(25),
                child: Text("Procedure:\n\n1. Allow the water to fill the equipment and adjust the flow rate to the lowest possible value.\n\n2. Adjust the flow rate of the dye solution so that its flow rate is the same as the velocity of water.\n\n3. Measure the volumetric flow rate using a measuring vessel and a stop watch.\n\n4. Increase the flow rate of water in small increments and repeat the above steps.\n\n5. From the highest flow rate decrease the flow rate in small decrements, and repeat the above steps.\n\n6. Tabulate the results using the simulator below", style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w400, fontSize: 15, wordSpacing: 2.0, height: 1.5))
              ),
              Container(
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Reynoldsexptsim(title: '',)));
                  },
                  child: Text("Go To Simulator"),
                ),
              )
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