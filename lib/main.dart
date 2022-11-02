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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      drawer: SafeArea(
        child: Drawer(

          backgroundColor: Colors.white,
          elevation: 10,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                child: ListTile(
                  title: Text("You are not loged in pleas login to this app",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {

                    },
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: Icon(Icons.login, color: Colors.grey),
                        )
                      ],
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {

                      },
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: Icon(Icons.person_add_alt_sharp,
                              color: Colors.grey),
                        )
                      ],
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Settings",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: Icon(Icons.settings, color: Colors.grey),
                        )
                      ],
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "About Us",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: Icon(Icons.question_answer_outlined,
                              color: Colors.grey),
                        )
                      ],
                    )),
              ),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("Back To Home"))
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
