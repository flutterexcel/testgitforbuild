import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Person> people =[
    Person(name: "Deepak", age: 35, dob: DateTime.parse('1986-15-07'), salary: 200000),
    Person(name: "Medhavi", age: 25, dob: DateTime.parse('1996-11-04'), salary: 20000),
    Person(name: "Asuu", age: 45, dob: DateTime.parse('1994-04-08'), salary: 40000),
    Person(name: "Mannu", age: 23, dob: DateTime.parse('1996-30-07'), salary: 78000),
    Person(name: "Guggu", age: 30, dob: DateTime.parse('1986-15-30'), salary: 7000),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body:  Row(
        children: [
          Column(
          
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
              ...people.map((value) {
                  return Text(value.name.toString().toUpperCase());
                }),
               
               
            
            ],
          ),
          const SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text('Age', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
               ...people.map((value) {
                  return Text(value.age.toString());
                }), 
            ],
          ),
          
          SizedBox(width: 20,),Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('DOB', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
               ...people.map((value) {
                  return Text(value.dob.day.toString()+"/"+value.dob.month.toString()+"/"+value.dob.year.toString());
                }), 
            ],
          ),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Salary', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
               ...people.map((value) {
                  return Text(value.salary.toStringAsFixed(2));
                }), 
            ],
          )
        ],
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class Person{
  String name;
  int age;
  DateTime dob;
  double salary;
  Person({
  required this.name,
  required this.age,
  required this.dob,
  required this.salary,

  });




}