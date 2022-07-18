import 'dart:math';

import 'package:demetel/screens/splash_screen.dart';
import 'package:demetel/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_bottom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Demetel'),
      initialRoute: '/',
      routes: {
        '/':(context) => const SplashScreen(),
        '/home':(context) => const MyHomePage(title: 'Demetel'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
String dropdownvalue = '0';  
String ddV12='1'; var it12 = ['0', '1','2','3','4',];
String ddV13='1'; var it13 = ['0', '1','2','3','4',];
String ddV14='1'; var it14 = ['0', '1','2','3','4',];
String ddV21='1'; var it21 = ['0', '1','2','3','4',];
String ddV22='0'; var it22 = ['0', '1','2','3','4',];
String ddV23='1'; var it23 = ['0', '1','2','3','4',];
String ddV24='1'; var it24 = ['0', '1','2','3','4',];
String ddV31='1'; var it31 = ['0', '1','2','3','4',];
String ddV32='1'; var it32 = ['0', '1','2','3','4',];
String ddV33='0'; var it33 = ['0', '1','2','3','4',];
String ddV34='1'; var it34 = ['0', '1','2','3','4',];
String ddV41='1'; var it41 = ['0', '1','2','3','4',];
String ddV42='1'; var it42 = ['0', '1','2','3','4',];
String ddV43='1'; var it43 = ['0', '1','2','3','4',];
String ddV44='0'; var it44 = ['0', '1','2','3','4',];
int maxx=1;
  // List of items in our dropdown menu
  var items = ['0', '1','2','3','4',];
void calculateNominal(){
 var sum1=num.parse(dropdownvalue)+num.parse(ddV12)+num.parse(ddV13)+num.parse(ddV14);
 var sum2=num.parse(ddV21)+num.parse(ddV22)+num.parse(ddV23)+num.parse(ddV24);
 var sum3=num.parse(ddV31)+num.parse(ddV32)+num.parse(ddV33)+num.parse(ddV34);
 var sum4=num.parse(ddV41)+num.parse(ddV42)+num.parse(ddV43)+num.parse(ddV44);

 maxx=max((max(sum1 as int, sum2 as int)),(max(sum3 as int, sum4 as int)));
  print(maxx);
  List matDivValues=[num.parse(dropdownvalue)/maxx,num.parse(ddV12)/maxx,num.parse(ddV13),num.parse(ddV21),num.parse(ddV22),num.parse(ddV23),num.parse(ddV31),num.parse(ddV32),num.parse(ddV33)];
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: const CustomAppBar(title:'Demetel'),
       bottomNavigationBar: const CustomBottomBar(),
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const TextField(
            decoration: InputDecoration(  
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),  
            labelText: 'Enter Name',  
            hintText: 'Enter Your Name'  
            ),
          ),
          const SizedBox(height: 3,),
          const Text('Calculation Of Nominal Matrix', style: TextStyle(fontSize: 18.0)),
          const SizedBox(height: 12,),
          Container(  
                  margin:const EdgeInsets.all(20),  
                  child: Table(  
                    defaultColumnWidth: const FlexColumnWidth(120.0),
                    //columnWidths:const {0: FractionColumnWidth(.3), 1: FractionColumnWidth(.3), 2: FractionColumnWidth(.18), 3:FractionColumnWidth(.22)},
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder.all(  
                        color: Colors.black,  
                        style: BorderStyle.solid,  
                        width: 2),  
                    children: [  
                      TableRow( children: [
                        Column(children:const [SizedBox(height: 20,)]),
                        Column(children:const [Text('Price', style: TextStyle(fontSize: 14.0))]),  
                        Column(children:const [Text('Storage', style: TextStyle(fontSize: 14.0))]),  
                        Column(children:const [Text('Camera', style: TextStyle(fontSize: 14.0))]), 
                        Column(children:const [Text('Processor', style: TextStyle(fontSize: 14.0))]),
                      ]),  
                      TableRow( children: [  
                        Column(children:const [Text('Price', style: TextStyle(fontSize: 14.0))]),
                        Column(children: [
                          DropdownButton(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
                        ]),   
                        Column(children: [
                          DropdownButton(
              value: ddV12,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it12.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV12 = newValue!;
                });
              },
            ),
                        ]),
                        Column(children: [
                          DropdownButton(
              value: ddV13,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it13.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV13 = newValue!;
                });
              },
            ),
                        ]),
                        Column(children: [
                          DropdownButton(
              value: ddV14,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it14.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV14 = newValue!;
                });
              },
            ),
                        ])   
                      ]),  
                      TableRow( children: [  
                        Column(children:const [Text('Storage', style: TextStyle(fontSize: 14.0))]),  
                        Column(children: [
                          DropdownButton(
              value: ddV21,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it21.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV21 = newValue!;
                });
              },
            ),
                        ]),   
                        Column(children: [
                          DropdownButton(
              value: ddV22,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it22.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV22 = newValue!;
                });
              },
            ),
                        ]),
                        Column(children:[
                          DropdownButton(
              value: ddV23,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it23.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV23 = newValue!;
                });
              },
            ),
                        ]), 
                        Column(children:[
                          DropdownButton(
              value: ddV24,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it24.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV24 = newValue!;
                });
              },
            ),
                        ]),  
                      ]),  
                      TableRow( children: [  
                        Column(children:const [Text('Camera', style: TextStyle(fontSize: 14.0))]),  
                        Column(children: [
                          DropdownButton(
              value: ddV31,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it31.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV31 = newValue!;
                });
              },
            ),
                        ]),  
                        Column(children: [
                          DropdownButton(
              value: ddV32,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it32.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV32 = newValue!;
                });
              },
            ),
                        ]),
                        Column(children:[
                          DropdownButton(
              value: ddV33,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it33.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV33 = newValue!;
                });
              },
            ),
                        ]),
                        Column(children:[
                          DropdownButton(
              value: ddV34,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it34.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV34 = newValue!;
                });
              },
            ),
                        ]),   
                      ]),
                      TableRow( children: [  
                        Column(children:const [Text('Processor', style: TextStyle(fontSize: 14.0))]),
                        Column(children: [
                          DropdownButton(
              value: ddV41,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it41.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV41 = newValue!;
                });
              },
            ),
                        ]),   
                        Column(children: [
                          DropdownButton(
              value: ddV42,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it42.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV42 = newValue!;
                });
              },
            ),
                        ]),
                        Column(children: [
                          DropdownButton(
              value: ddV43,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it43.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV43 = newValue!;
                });
              },
            ),
                        ]),
                        Column(children: [
                          DropdownButton(
              value: ddV44,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: it44.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  ddV44 = newValue!;
                });
              },
            ),
                        ])   
                      ]),   
                    ],  
                  ),  
                ),
          const SizedBox(height: 24,),
        FloatingActionButton.extended(
        onPressed: () {calculateNominal();},
        icon: const Icon(Icons.account_circle),
        label: const Text("Submit"),
      ),
        ],
       )
    );
  }
}
