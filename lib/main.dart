import 'package:crud_app/pages/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp>_initialization=Firebase.initializeApp();
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder(future: _initialization,
      builder:(context, snapshot){
        if(snapshot.hasError){
          print("Something Error");
        }
        if(snapshot.connectionState==ConnectionState.done){
          return   MaterialApp(
      title:'Flutter Firestore CRUD',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomePage()


    );
        }
        return CircularProgressIndicator();
      },);
    
    
    
  }

}