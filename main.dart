


/*
// ListView searching the data from the data list

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Searching in listview'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Map<String,dynamic>> alluser = [
    {"id":1, "name":"Harry", "age":12},
    {"id":2, "name":"Harman", "age":12},
    {"id":3, "name":"Blacky", "age":15},
    {"id":4, "name":"Bob", "age":15},
    {"id":5, "name":"Peter", "age":16},
    {"id":6, "name":"Peter1", "age":16},
    {"id":7, "name":"Santosh", "age":17},
    {"id":8, "name":"Komal", "age":18},
    {"id":9, "name":"Pardeep", "age":19},
    {"id":10, "name":"Kuli", "age":21},
  ];
  List<Map<String,dynamic>> founduser = [];


  @override
  initState(){
    founduser = alluser;
    super.initState();
  }

  // void _runfilter(String enterdKeyword){
  //   List<Map<String,dynamic>> result = [];
  //   if(enterdKeyword.isEmpty){
  //     result = alluser;
  //   }
  //   else{
  // mistake the spelling opf the lowercase in line
  //     result = alluser.where((user) => user["name"].toLowercase().contains(enterdKeyword.toLowerCase())).toList();
  //     }
  //   setState(() {
  //     founduser = result;
  //   });
  //     }

  void _runfilter(String enterdKeyword) {
    List<Map<String, dynamic>> result = [];
    if (enterdKeyword.isEmpty) {
      result = alluser;
    } else {
      result = alluser.where((user) => user["name"].toLowerCase().contains(enterdKeyword.toLowerCase())).toList();
    }
    setState(() {
      founduser = result;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    TextField(
                        onChanged:(value)=>_runfilter(value),
                        decoration:const InputDecoration(
                          labelText:" search",

                        )
                    ),
                    const SizedBox(height: 10),

                    Expanded(
                        child: ListView.builder(
                          itemCount:founduser.length,
                          itemBuilder:(context,index) => Card(
                              key:ValueKey(founduser[index]["id"]),
                              color:Colors.blue,
                              elevation:4,
                              child:ListTile(
                                  leading:Text(founduser[index]["id"].toString()),
                                  title:Text(founduser[index]['name']),
                                  subtitle:Text('${founduser[index]["age"].toString()} years old'
                                  )
                              )

                          ),
                        ))

                  ]
              ),
            )
        )
    );
  }
}*/
