import 'package:crud_app/pages/add_studentpage.dart';
import 'package:crud_app/pages/list_studentPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Flutter FireStore CRUD'),
          ElevatedButton(
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddStudentPage()))
            },
            child: Text('Add', style: TextStyle(fontSize: 20.0)),
            style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
          )
        ],
      )),
      body:ListStudentPage(),
    );
  }
}
